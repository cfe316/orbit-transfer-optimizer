(* ::Package:: *)

(* ::Section:: *)
(* Utilities subpackage: Title and comments *)

(* :Title: Utilities *)
(* :Context: OrbitTransferOptimizer`Utilities` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`Utilities`"];

Unprotect@"`*";
ClearAll@"`*";

angleBetweenTwoAroundCircle::usage = "Find an angle 'in between' two angles on a circle.";

orderTwoAnglesAroundCircle::usage = "Determine which of two points around a circle is 'leading' the other (ccw). Return either 1 or 2."

restrict\[Nu]Range::usage = "Ensure that an Orbit's range of \[Nu] does not allow the wrong hyperbola branch.

Input:
<| \"Orbit\"->\"Nondegenerate\",
	\"a\"->semimajoraxis,
	\"e\"->eccentricity,
	\"i\"->inclination
	\"\[CapitalOmega]\"->longitudeOfAscendingNode
	\"\[CurlyPi]\"->longitudeOfPeriapsis
|>
With an optional key \"\[Nu]Range\"->{\[Nu]Min,\[Nu]Max} to specify that only some regions of each orbit should be searched. If no \[Nu]Range is specified, the default is -\[Pi] to \[Pi].

Output:
<| \"Orbit\"->\"Nondegenerate\",
	\"a\"->semimajoraxis,
	\"e\"->eccentricity,
	\"i\"->inclination
	\"\[CapitalOmega]\"->longitudeOfAscendingNode
	\"\[CurlyPi]\"->longitudeOfPeriapsis
	\"\[Nu]Range\"->{\[Nu]Min,\[Nu]Max}
|>

";

restrictOrbit::usage = "Same as restrict\[Nu]Range but also ensure that there are no parabolic orbits, and that a is negative for hyperbolics.";

CoordinateAfterBurn::usage = "Take a coordinate and return a coordinate of the same type, with the velocity equal to the velocity after the burn happens.

Input coordinate format:
<|
	\"Coordinate\"->\"[any type]\",
	\"Position\"->{...},
	\"Velocity\"->{...},
	\"VelocityChange\" -> {...} 
|>

Output coordinate format:
<|
	\"Coordinate\"->\"[same type]\",
	\"Position\"->{...},
	\"Velocity\"->{...}
|>
";

ModPiRange::usage = "ModPiRange[x] : output a number in [-\[Pi], \[Pi]]";

Begin["Private`"];

angleBetweenTwoAroundCircle[th1_, th2_] := 
Block[{mth1, mth2, mths, lead, trail, th},
	mths = Mod[{th1, th2}, 2 \[Pi]];
	lead = orderTwoAnglesAroundCircle[mths[[1]], mths[[2]]];
	trail = 3 - lead;
	th = If[mths[[lead]] > mths[[trail]],
		Mean[mths],
		Mod[Mean[{2 \[Pi] + mths[[lead]], mths[[trail]]}], 2 \[Pi]]
	];
	If[mths[[1]] == mths[[2]], th = mths[[1]]];
Return[th];
]

orderTwoAnglesAroundCircle[th1_, th2_] := 
Block[{mth1, mth2, o},
	{mth1, mth2} = Mod[{th1, th2}, 2 \[Pi]];
	o = If[Abs[mth2 - mth1] < \[Pi], 
		If[mth2 > mth1, 2, 1], 
		If[mth2 > mth1, 1, 2]
	];
	If[Abs[Mod[th1, \[Pi]] - Mod[th2, \[Pi]]] < 10^-12, 
		o = 1;
	];
	Return[o];
]

restrict\[Nu]Range[kep_?(AssociationQ[#] && KeyExistsQ[#,"Orbit"] && #["Orbit"] == "Nondegenerate" &)]:= Block[{outputKep, e, nLimit, onrmin, onrmax, cnrmin, cnrmax},
	e = kep["e"];
	nLimit = \[Pi];
	(* Limit v to the correct hyperbola branch. 0.99 is to prevent evaluating at distance \[Infinity] *)
	If[ e > 1, nLimit = 0.99 ArcCos[-1/e];]; 
	If[KeyExistsQ[kep, "\[Nu]Range"],
		{onrmin, onrmax} = kep["\[Nu]Range"];
		cnrmin = Max[{-nLimit, onrmin}];
		cnrmax = Min[{nLimit, onrmax}];,
		{cnrmin, cnrmax} = {-nLimit, nLimit};
	];
	outputKep = kep;
	outputKep["\[Nu]Range"] = {cnrmin, cnrmax};
	Return[outputKep];
]

restrictOrbit[kep_?(AssociationQ[#] && KeyExistsQ[#,"Orbit"] && #["Orbit"] == "Nondegenerate" &)]:= Block[{outputKep, e, a, O},
	e = kep["e"];
	If[ e == 1 , e = 1.001; ];
	a = kep["a"];
	(* Limit v to the correct hyperbola branch. 0.99 is to prevent evaluating at distance \[Infinity] *)
	If[ e > 1, nLimit = 0.99 ArcCos[-1/e]; a = -Abs[a];]; 
	outputKep = kep;
	outputKep["a"] = a;
	outputKep["e"] = e;
	If[ kep["i"] == 0 || kep["i"] == Pi, outputKep["\[CapitalOmega]"] = 0];
	outputKep["\[Omega]"] = kep["\[CurlyPi]"] - outputKep["\[CapitalOmega]"];
	Return[restrict\[Nu]Range[outputKep]];
]

CoordinateAfterBurn[c_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] &)] := 
Block[{v, vc, t},
	t = c["Coordinate"];
	v = c["Velocity"];
	vc = c["VelocityChange"];
	<|"Coordinate" -> t, "Position" -> c["Position"], "Velocity" -> (v + vc)|>
];

ModPiRange[x_]:= Mod[x+Pi, 2 Pi]-Pi;

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
