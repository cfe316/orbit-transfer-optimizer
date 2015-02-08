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
	\"\[NuRange]\"->{\[Nu]Min,\[Nu]Max}
|>

";


Begin["`Private`"];

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
(*Needs work*)
restrict\[Nu]Range[o_]:= Block[{},
	If[ e > 1,
		(* Hyperbolic orbits have negative a *)
		If[ a > 0, a = -1 a];
		(* Limit v to the correct hyperbola branch. 0.99 is to prevent evaluating at distance \[Infinity] *)
		vLimit = 0.99 ArcCos[-1/e];
		outputKep["\[Nu]"] = Clip[kep["\[Nu]"], {- vLimit, vLimit}];
	]; 
]
End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
