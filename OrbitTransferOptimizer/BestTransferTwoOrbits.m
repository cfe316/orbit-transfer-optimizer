(* ::Package:: *)

(* ::Section:: *)
(* Keplerian to Cartesian Elements package: Title and comments *)

(* :Title: OrbitTransferOptimizer *)
(* :Context: OrbitTransferOptimizer`BestTransferTwoOrbits *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`BestTransferTwoOrbits`",
				{"OrbitTransferOptimizer`Utilities`",
				 "OrbitTransferOptimizer`BestTransferTwoPoints`",
				 "OrbitTransferOptimizer`OrbitCoordinateTransformation`",
				 "OrbitTransferOptimizer`Heading`"
				}];

Unprotect@"`*";
ClearAll@"`*";

BestTransferTwoOrbits::usage = "BestTransferTwoOrbits[o1, o2]:
Finds the best set of two burns to transfer between two orbits around the same body. Orbits are in the format:

<| \"Orbit\"->\"Nondegenerate\",
	\"a\"->semimajoraxis, measured in DU,
	\"e\"->eccentricity,
	\"i\"->inclination (defined from 0 to \[Pi]),
	\"\[CapitalOmega]\"->longitudeOfAscendingNode,
	\"\[Omega]\"->argumentOfPeriapsis,
|>
, with an optional key \"\[Nu]Range\"->{\[Nu]Min,\[Nu]Max} to specify that only some regions of each orbit should be searched. If no \[Nu]Range is specified, the default is -\[Pi] to \[Pi].

Output is in the format:
<|
	\"Total \[CapitalDelta]V\" -> 0,
	\"Burn 1\" -> <|
		\"Coordinate\" -> \"Cartesian\",
		\"Position\" -> {X, Y, Z},
		\"Velocity\" -> {vX, vY, vZ},
		\"VelocityChange\" -> {vX, vY, vZ}
	|>,
	\"Burn 2\" -> <|
		\"Coordinate\" -> \"Cartesian\",
		\"Position\" -> {X, Y, Z},
		\"Velocity\" -> {vX, vY, vZ},
		\"VelocityChange\" -> {vX, vY, vZ}
	|>
|>
Where Velocity is the velocity before the burn.
";

Begin["Private`"];

BestTransferTwoOrbits[oo1_, oo2_]:= Block[{
 o1, o2
},
	(* Input sanitizing *)
	{o1, o2} = restrictOrbit[#]& /@ {oo1, oo2};

	If[analyticTransferPossible[o1, o2],
		tryAnalyticTransfer[o1, o2]
	,
		nonanalyticTransfer[o1, o2]
	]
];

nonanalyticTransfer[o1_, o2_] := Block[{
 t, nul1, nuh1, nul2, nuh2, 
 minnustep, nustep1, nustep2},
 
	minnustep = Pi /24.;
	{nul1, nuh1} = o1["\[Nu]Range"];
	nustep1 = Min[(nuh1 - nul1)/12., minnustep];
	{nul2, nuh2} = o2["\[Nu]Range"];
	nustep2 = Min[(nuh2 - nul2)/12., minnustep];

	(* Use brute-force search *)
	t = Flatten[
	     Table[{nu1, nu2, BestTransferTwoPoints[
	        CartesianFromKeplerian[CoordinateFromOrbit[o1, nu1]], 
	        CartesianFromKeplerian[CoordinateFromOrbit[o2, nu2]]
	        ]}, 
	       {nu1, nul1, nuh1-nustep1/10, nustep1},  (* The -nustep1/10 is to prevent evaluating both -Pi and Pi which are the same point in space *)
	       {nu2, nul2, nuh2-nustep2/10, nustep2}] 
	    , 1];
	(* Select the point with lowest total deltaV. If there are many that are tied, choose the first one.*)
	MinimalBy[t, #[[3]]["Total \[CapitalDelta]V"] &] // First
];

(* For some pairs of orbits there may be a known solution (such as a Hohmann transfer) that is the most efficient. 
For simplicity, this does not take into account checks of nuRange, so it actually might not be valid to do some analytic transfer.
More thorough checks could eliminate false positives in the future versions (low priority...) *)
analyticTransferPossible[o1_, o2_] := Block[{},
	(orbsAreCoplanar[o1, o2] && orbsAreCircular[o1, o2]) || orbsAreIdentical[o1, o2]
];

tryAnalyticTransfer[o1_, o2_] := Block[{w1, w2, nr1, nr2, nInt, minInt, maxInt, nu},
	Which[
	orbsAreIdentical[o1, o2],
		(* The orbital elements show that the orbits are the same,
		   but we have not checked NuRange, which could be more restricted than [-Pi, Pi].
		   We need choose some acceptable nu for each orbit. *)
		nr1 = Interval[o1["\[Nu]Range"]];
		nr2 = Interval[o2["\[Nu]Range"]];
		nInt = IntervalIntersection[nr1, nr2];
		minInt = Min[nInt];
		maxInt = Max[nInt];
		If[ minInt < 2 Pi , (* If nInt is not the empty interval *)
			(* preferentially choose 0 *)
			nu = If[ IntervalMemberQ[nInt, 0], 0, RandomReal[{minInt, maxInt}]];
			{nu, nu,
			BestTransferTwoPoints[
			    CartesianFromKeplerian[CoordinateFromOrbit[o1, nu]], 
			    CartesianFromKeplerian[CoordinateFromOrbit[o2, nu]]
			]
			}
		,
			(* Else the two nu intervals don't coincide, so fall through to brute force.
			 (This could be done more elegantly: since the orbits are the same, ANY valid nu1 and nu2 should work. ) *)
			nonanalyticTransfer[o1, o2]
		],
	orbsAreCircular[o1, o2] && orbsAreCoplanar[o1, o2],
		(* Do a Hohmann transfer. We need to pick points from each 
		   orbit that are 180 degrees apart from each other.
		   Since these are circular orbits, we can choose any pair of points.
		   Choose (somewhat arbitrarily) the angle correspoding to where the periapsis would be if w1 was 0. *)
		{w1, w2} = ModPiRange[#["\[Omega]"]] & /@{o1, o2};
		{-w1, -w2 + Pi,
		BestTransferTwoPoints[
		    CartesianFromKeplerian[CoordinateFromOrbit[o1, -w1]], 
		    CartesianFromKeplerian[CoordinateFromOrbit[o2, -w2+ Pi]]
		]
		},
	True,
		nonanalyticTransfer[o1, o2]
	]
]

(* Returns true when both orbits are in the same plane,
   but not if they are in opposite directions (like i1==0 and i2==Pi)...
   because in that case I don't know any nice analytic solutions, we just brute force it.  *)
orbsAreCoplanar[o1_, o2_] := Block[{
i1, O1,
i2, O2},
	i1=o1["i"];
	i2=o2["i"];
	O1=o1["\[CapitalOmega]"];
	O2=o2["\[CapitalOmega]"];

	i1==i2 && ( ( i1 == 0 || i1 == Pi) || O1 == O2 )
];

(* Returns true if both orbits are circular. *)
orbsAreCircular[o1_, o2_] := Block[{},
	o1["e"] == 0 && o2["e"] == 0
];

(* Returns true if the orbits are identical.
 This can be if all the corresponding elements are equal,
 or, if both orbits are in the same plane and w1=w2 and e1=e2,
 or, if the orbits are circular, in the same plane i=0 or i=180, and a1=a2 (O and w are irrelevant then)*)
orbsAreIdentical[o1_, o2_] := Block[{
a1, e1, i1, O1, w1,
a2, e2, i2, O2, w2},
	a1=o1["a"];
	a2=o2["a"];
	e1=o1["e"];
	e2=o2["e"];
	i1=o1["i"];
	i2=o2["i"];
	O1=o1["\[CapitalOmega]"];
	O2=o2["\[CapitalOmega]"];
	w1=o1["\[Omega]"];
	w2=o2["\[Omega]"];

	a1 == a2 && (e1 == 0 || w1 == w2) && e1 == e2 && ((i1 == 0 || i1 == Pi) || O1 == O2) && i1 == i2
];

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
