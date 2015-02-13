(* ::Package:: *)

(* ::Section:: *)
(* Keplerian to Cartesian Elements package: Title and comments *)

(* :Title: OrbitTransferOptimizer *)
(* :Context: OrbitTransferOptimizer`BestTransferTwoPoints *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`BestTransferTwoPoints`",
				{"OrbitTransferOptimizer`OrbitCoordinateTransformation`",
				 "OrbitTransferOptimizer`Utilities`",
				 "OrbitTransferOptimizer`DeltaV`",
				 "OrbitTransferOptimizer`AcceptableInterval`",
				 "MinimizeUnimodalFunction`"
				}];

Unprotect@"`*";
ClearAll@"`*";

BestTransferTwoPoints::usage = "Finds the best set of two burns to transfer between two orbits around the same body. Parameters are \[Mu] of the body, then two orbits in the format:

Output is in the format:
<|
	\"Total \[CapitalDelta]V\" -> 0,
	\"Burn 1\" -> <|
		\"Coordinate\" -> \"Cartesian\",
		\"Position\" -> {X, Y, Z}
		\"VelocityChange\" -> {vX, vY, vZ}
	|>,
	\"Burn 2\" -> <|
		\"Coordinate\" -> \"Cartesian\",
		\"Position\" -> {X, Y, Z}
		\"VelocityChange\" -> {vX, vY, vZ}
	|>
|>
"
geneRadOppoAng::usage = "";
geneAngGeneRad::usage = "";

Begin["Private`"];

BestTransferTwoPoints[
cart1_?(AssociationQ[#] && KeyExistsQ[#, "Coordinate"] && #["Coordinate"] == "Cartesian" &),
cart2_?(AssociationQ[#] && KeyExistsQ[#, "Coordinate"] && #["Coordinate"] == "Cartesian" &)] := Module[{p1, p2, bt, tDV, b1, b2},

	{p1, p2} = #["Position"] & /@ {cart1, cart2};
	(* If positions are in a line or not *)
	bt = If[ Norm[p1 \[Cross] p2] < 10 $MachineEpsilon,
		(* Positions are collinear *)
		If[ p1 . p2 > 0,
			(* Positions are on the same side *)
			If[ Norm[p1] == Norm[p2],
				(* Positions are at the same radius: positions are directly across from each other *)
				sameRadSameAng[cart1, cart2],
				geneRadSameAng[cart1, cart2]
			],
			(* Positions are on opposite sides *)
			If[ Norm[p1] == Norm[p2],
				(* Positions are at the same radius: positions are directly across from each other *)
				sameRadOppoAng[cart1, cart2],
				geneRadOppoAng[cart1, cart2]
			]
		],
		(* Positions are not collinear. *)
		geneAng[cart1, cart2]
	];
	tDV = bt["Total \[CapitalDelta]V"];
	b1 = bt["Burn 1"];
	b2 = bt["Burn 2"];
	<|"Total \[CapitalDelta]V" -> tDV, "Burn 1" -> b1, "Burn 2" -> b2 |>
]

sameRadSameAng[cart1_, cart2_] := Module[{vc, tdv},
vc = cart2["Velocity"] - cart1["Velocity"];
tdv = Norm[vc];
<|	"Total \[CapitalDelta]V" -> tdv, 
	"Burn 1"-> <|	"Coordinate"->"Cartesian",
			"Position"->cart1["Position"],
			"Velocity"->cart1["Velocity"],
			"VelocityChange" -> vc
		|>
	"Burn 2"-> <|	"Coordinate"->"Cartesian",
			"Position"->cart2["Position"], 
			"Velocity"-> cart2["Velocity"],
			"VelocityChange" -> {0.,0.,0.}
		|>
|>
]


(* Like bestOrbitTwoPointsSameTheta *)
(* needs work *)
geneRadSameAng[cart1_, cart2_] := Module[{
 M, cpl1, cpl2, pol1, pol2,
 r1, vr1, vth1, vz1,
 r2, vr2, vth2, vz2,
 fDV, minvr, maxvr, vrstep, b, tDV, cv1, cv2,
 burn1, burn2, c1, c2},

	(* Rotate into the correct frame. *)
	{M, cpl1, cpl2} = CartesianPlanarsFromCartesians[cart1, cart2];
	{pol1, pol2} = PolarFromCartesianPlanar[#]& /@ {cpl1, cpl2};

	(* Unpack coordinates *)
	{r1, r2} = #["Position"][[1]] & /@ {pol1, pol2};
	{vr1, vth1, vz1} = pol1["Velocity"];
	{vr2, vth2, vz2} = pol2["Velocity"];

	vrstep = 0.0001; (* Velocity space accuracy goal. *)
	If[r1 < r2, 
		(* The function to be minimized: the radial burn will occur at the lower point in the gravity well. *)
		fDV = Sqrt[vth1^2 + vz1^2 + (vr1 - #)^2] + Sqrt[ vth2^2 + vz2^2 + (Abs[vr2] - Sqrt[#^2 - 2 (1/r1 - 1/r2)])^2] &;
		minvr = Sqrt[2 (1/r1 - 1/r2)];
		maxvr = 2.*Max[vr1, Sqrt[vr2^2 + 2 (1/r1 - 1/r2)]];
		b = MinimizeUnimodalFunction[fDV, minvr, maxvr, vrstep];
		cv2 = {vr2 + If[Sign[vr2] == 1, -1, 1]*Sqrt[b[[1]]^2 - 2 (1/r1 - 1/r2)], vth2, vz2}; 
		,
		fDV = Sqrt[vth1^2 + vz1^2 + (vr1 - #)^2] + Sqrt[ vth2^2 + vz2^2 + (vr2 + Sqrt[#^2 + 2 (1/r2 - 1/r1)])^2] &;
		maxvr = (Abs[vr1] + Sqrt[2 (1/r2 - 1/r1)] + Abs[vr2]);
		b = If[vr1 > 0, 
			MinimizeUnimodalFunction[fDV, 0, maxvr, vrstep],
			MinimizeUnimodalFunction[fDV, -maxvr, 0, vrstep]
		];
		cv2 = {vr2 - Sqrt[b[[1]]^2 + 2 (1/r2 - 1/r1)], vth2, vz2};
	];
	cv1 = {b[[1]] - vr1, -vth1, -vz1};
	tDV = b[[2]]; (* Total delta V *)

	{burn1, burn2} = ConstantArray[<| "Coordinate"->"Polar" |>, {2}];
	burn1["Position"] = pol1["Position"];
	burn2["Position"] = pol2["Position"];
	burn1["Velocity"] = pol1["Velocity"];
	burn2["Velocity"] = pol2["Velocity"] - cv2;
	burn1["VelocityChange"] = cv1;
	burn2["VelocityChange"] = cv2; 

	{cpl1, cpl2} = CartesianPlanarFromPolar[#] & /@ {burn1, burn2};
	{c1, c2} = CartesianFromCartesianPlanar[Inverse[M], #] & /@ {cpl1, cpl2};
	Return[<|"Total \[CapitalDelta]V"->tDV, "Burn 1"->c1, "Burn 2"->c2 |>];
]

(* tough case. Possibly requires a 2d parameter search. *)
sameRadOppoAng[cart1_, cart2_] := Module[{},
<|	"Total \[CapitalDelta]V" -> 1000000, 
	"Burn 1"-> <|	"Coordinate"->"Cartesian",
			"Position"->cart1["Position"],
			"Velocity"->cart1["Velocity"],
			"VelocityChange" -> {0,0,0}
		|>,
	"Burn 2"-> <|	"Coordinate"->"Cartesian",
			"Position"->cart2["Position"], 
			"Velocity"-> cart2["Velocity"],
			"VelocityChange" -> {0,0,0}
		|>
|>
]

(* tough case. Possibly requires a 2d parameter search. *)
geneRadOppoAng[cart1_, cart2_] := Module[{},
<|	"Total \[CapitalDelta]V" -> 1000000, 
	"Burn 1"-> <|	"Coordinate"->"Cartesian",
			"Position"->cart1["Position"],
			"Velocity"->cart1["Velocity"],
			"VelocityChange" -> {0,0,0}
		|>,
	"Burn 2"-> <|	"Coordinate"->"Cartesian",
			"Position"->cart2["Position"], 
			"Velocity"->cart2["Velocity"],
			"VelocityChange" -> {0,0,0}
		|>
|>
]

geneAng[cart1_, cart2_] := Module[{M, cartpl1, cartpl2, pol1, pol2, r, tdv, burn1, burn2, c1, c2},
	{M, cartpl1, cartpl2} = CartesianPlanarsFromCartesians[cart1, cart2];
	{pol1, pol2} = PolarFromCartesianPlanar[#]& /@ {cartpl1, cartpl2};
	r = If[pol1["Position"][[1]] == pol2["Position"][[1]],
		geneAngSameRad[pol1, pol2],
		geneAngGeneRad[pol1, pol2]
	];
	tdv = r["Total \[CapitalDelta]V"];
	burn1 = r["Burn 1"];
	burn2 = r["Burn 2"];
	{cartpl1, cartpl2} = CartesianPlanarFromPolar[#] & /@ {burn1, burn2};
	{c1, c2} = CartesianFromCartesianPlanar[Inverse[M], #] & /@ {cartpl1, cartpl2};
	Return[<|"Total \[CapitalDelta]V"->tdv, "Burn 1"->c1, "Burn 2"->c2 |>];
]

(* Used for geneAngGeneRad. Choose the place where e is lowest and positive.*)
startingOmega[pol1_, pol2_] := Module[{r1, th1, r2, th2, wstart1, wstart2, ewInt},
	{r1, th1} = {pol1["Position"][[1]], 0};
	{r2, th2} = pol2["Position"];
	{wstart1, wstart2} = Mod[{
		ArcTan[-r1 + r2 Cos[th2], + r2 Sin[th2]], 
		ArcTan[ r1 - r2 Cos[th2], - r2 Sin[th2]]
	}, 2 \[Pi]];
	ewInt = eIsPositiveInterval[{r1, th1}, {r2, th2}];
	wstart = If[IntervalMemberQ[ewInt, wstart1],
			wstart1,
			If[ IntervalMemberQ[ewInt, wstart1 + 2 \[Pi]],
				wstart1 + 2 \[Pi],
				wstart2
			]
		];
	Return[wstart];
]

geneAngGeneRad[pol1_, pol2_] := Module[
{r1, th1, vr1, vth1, vz1,
 r2, th2, vr2, vth2, vz2,
 v1, v2, sh,
 wstart, wInt, tDV,
 wrange, wrange1, wrange2,
 wstep, m, m1, m2},

	(* Figure out the starting w. *)
	wstart = startingOmega[pol1, pol2];
	(* Unpackage the coordinates. th1 should be within numerical errors of 0. Set it to zero explicity. *)
	{r1, th1} = {pol1["Position"][[1]],0}; v1 = pol1["Velocity"]; {vr1, vth1, vz1} = v1;
	{r2, th2} =  pol2["Position"];         v2 = pol2["Velocity"]; {vr2, vth2, vz2} = v2;

	(* Interval for omega *)
	wInt = Acceptable\[Omega]Interval[{r1, th1}, {r2, th2}];
	wstep = 0.0001; (*This sets (roughly) the accuracy of the result.  0.1 milliRadian is good enough for us.*) 

	(*If the two points have angular momentum in the same direction, 
	we only need to look for orbits going in that direction.*)
	If[Sign[vth1] == Sign[vth2] && Sign[vth1] != 0,
		wrange = getInequalityForPoint[wInt[[(Sign[vth1] + 1)/2 + 1, 2]], wstart];
		m = MinimizeUnimodalFunction[\[CapitalDelta]V[pol1, pol2, #, Sign[vth1]] &, wrange[[1]] + wstep/10, wrange[[3]] - wstep/10, wstep];
		sh = Sign[vth1];,

		(*if the initial angular momenta are in different directions, look for solutions in each direction*)
		{wrange1, wrange2} = getInequalityForPoint[wInt[[#, 2]], wstart] & /@ Range[2];
		m1 = MinimizeUnimodalFunction[\[CapitalDelta]V[pol1, pol2, #, -1] &, wrange1[[1]] + wstep/10, wrange1[[3]] - wstep/10, wstep];
		m2 = MinimizeUnimodalFunction[\[CapitalDelta]V[pol1, pol2, #,  1] &, wrange2[[1]] + wstep/10, wrange2[[3]] - wstep/10, wstep];
		{m, sh} = If[ m1[[2]] < m2[[2]], {m1, -1}, {m2, 1}];
	];
	tDV = m[[2]];
	{vc1, vc2} = \[CapitalDelta]VVectors[pol1, pol2, m[[1]], sh];
	<|	"Total \[CapitalDelta]V" -> tDV,
		"Burn 1"-> <|   "Coordinate"->"Polar",
				"Position"->pol1["Position"],
				"Velocity"->pol1["Velocity"],
				"VelocityChange"->vc1
			|>,
		"Burn 2"-> <|   "Coordinate"->"Polar",
				"Position"->pol2["Position"],
				"Velocity"->(pol2["Velocity"] - vc2),
				"VelocityChange"->vc2
			|>
	|>
]

geneAngSameRad[pol1_, pol2_] := Module[
{r1, th1, vr1, vth1, vz1,
 r2, th2, vr2, vth2, vz2,
 vc1, vc2,
 os, maxoe, wb, wf, tDV,
 d1, d2, maxep, cases, etol, DVTable, lDVi,
 bestw, bestsh, beste},

	(* Unpackage the coordinates *)
	{r1, th1} = {pol1["Position"][[1]],0}; {vr1, vth1, vz1} = pol1["Velocity"];
	{r2, th2} =  pol2["Position"];         {vr2, vth2, vz2} = pol2["Velocity"];

	wb = angleBetweenTwoAroundCircle[th1, th2];
	wf = Mod[(wb + \[Pi]), 2 \[Pi]];

	(* directions 1 and 2: represents either ccw (1) or cw (-1)*)
	{d1, d2} = If[orderTwoAnglesAroundCircle[th1, th2] == 1, {1, -1}, {-1, 1}];
	(*In one case, there is no upper limit for the eccentricity (the orbit becomes a straight line between the points). But since we need \
	to start the search with a finite eccentricity, we guess that the Best Orbit's eccentricity will not be much more than the e \
	of either the initial or final orbits, so find the max eccentricity of the initial and final orbits.*)
 
	os = PlanarKeplerianFromPolar[#]& /@ {pol1, pol2};
	maxoe = Max[#["e"] & /@ os];

	cases = {{wb, d1, 1},
		 {wb, d2, Max[maxoe*2, 1]},(* geometrically, there is no max e, but we need some upper bound to search at.*)
		 {wf, d1, -1/Cos[th1 - wf]*0.999},(* e for which p becomes negative: wrong hyperbola branch *)
		 {wf, d2, 1}
		};
	etol = 0.0001; (* tolerance for finding the optimal eccentricity *)
 
	DVTable = Table[MinimizeUnimodalFunction[\[CapitalDelta]V[pol1, pol2, cases[[i, 1]], cases[[i, 2]], #] &, 0, cases[[i, 3]], etol], {i, 4}];
	lDVi = Ordering[(DVTable\[Transpose])[[2]]][[1]];
	bestw  = cases[[lDVi,1]];
	bestsh = cases[[lDVi,2]];
	beste = DVTable[[lDVi,1]];
	tDV   = DVTable[[lDVi,2]];

	{vc1, vc2} = \[CapitalDelta]VVectors[pol1, pol2, bestw, bestsh, beste];
	<|	"Total \[CapitalDelta]V" -> tDV,
		"Burn 1"-> <|   "Coordinate"->"Polar",
				"Position"->pol1["Position"],
				"Velocity"->pol1["Velocity"],
				"VelocityChange"->vc1
			|>,
		"Burn 2"-> <|   "Coordinate"->"Polar",
				"Position"->pol2["Position"],
				"Velocity"->(pol2["Velocity"] - vc2),
				"VelocityChange"->vc2
			|>
	|>
]

End[];

SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];

EndPackage[];
