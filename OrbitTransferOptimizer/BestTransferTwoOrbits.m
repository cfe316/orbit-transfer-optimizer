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
	\"\[CurlyPi]\"->longitudeOfPeriapsis,
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

ProcessBurn::usage = "Compute ancillary information from Burn 1 and Burn 2";

Begin["Private`"];

BestTransferTwoOrbits[oo1_, oo2_]:= Block[{
 o1, o2
},
 
	{o1, o2} = restrictOrbit[#]& /@ {oo1, oo2};

	If[analyticTransferPossible[o1, o2],
		tryAnalyticTransfer[o1, o2]
	,
		nonanalyticTransfer[o1, o2]
	]
];

ProcessBurn[b_] := Module[{ob},
	ob = b;
	ob["Radius"] = Norm[b["Position"]];
	ob["Speed"] = Norm[b["Velocity"]];
	ob["\[CapitalDelta]V"] = Norm[b["VelocityChange"]];
	ob["KSP Navball"] = KSPHeadingFromCartesian[ob]["KSPNavball"];
	ob["LVLH Heading"] = LVLHHeadingFromCartesian[ob]["LVLH"];
	ob["\[Nu]"] = KeplerianFromCartesian[ob]["\[Nu]"];
	ob
];

nonanalyticTransfer[o1_, o2_] := Block[{
 t, nul1, nuh1, nul2, nuh2, 
 minnustep, nustep1, nustep2, mint},
 
	minnustep = Pi /12.;
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
	       {nu1, nul1, nuh1-nustep1/10, nustep1},
	       {nu2, nul2, nuh2-nustep2/10, nustep2}] 
	    , 1];
	mint = MinimalBy[t, #[[3]]["Total \[CapitalDelta]V"] &] // First
];

analyticTransferPossible[o1_, o2_] := Block[{},
	(orbsAreCoplanar[o1, o2] && orbsAreCircular[o1, o2]) || orbsAreIdentical[o1, o2]
];

tryAnalyticTransfer[o1_, o2_] := Block[{w1, w2, nr1, nr2, nInt, minInt, maxInt, nu},
	nr1 = Interval[o1["\[Nu]Range"]];
	nr2 = Interval[o2["\[Nu]Range"]];
	Which[
	orbsAreIdentical[o1, o2],
		nInt = IntervalIntersection[nr1, nr2];
		minInt = Min[nInt];
		maxInt = Max[nInt];
		(* If it's not the empty interval *)
		If[ minInt < 2 Pi ,
			(* preferentially choose 0 *)
			nu = If[ IntervalMemberQ[nInt, 0], 0, RandomReal[{minInt, maxInt}]];
			{nu, nu,
			BestTransferTwoPoints[
			    CartesianFromKeplerian[CoordinateFromOrbit[o1, nu]], 
			    CartesianFromKeplerian[CoordinateFromOrbit[o2, nu]]
			]
			}
		,
			(* If the two nu intervals don't coincide, find some other points *)
			nonanalyticTransfer[o1, o2]
		],
	orbsAreCircular[o1, o2] && orbsAreCoplanar[o1, o2],
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

orbsAreCoplanar[o1_, o2_] := Block[{
i1, O1,
i2, O2},

i1=o1["i"];
i2=o2["i"];
O1=o1["\[CapitalOmega]"];
O2=o2["\[CapitalOmega]"];

i1==i2 && ( i1 == 0 || O1 == O2 )

];

orbsAreCircular[o1_, o2_] := Block[{},
	o1["e"] == 0 && o2["e"] == 0
];

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

a1 == a2 && (e1 == 0 || w1 == w2) && e1 == e2 && (i1 == 0 || O1 == O2) && i1 == i2
];


End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
