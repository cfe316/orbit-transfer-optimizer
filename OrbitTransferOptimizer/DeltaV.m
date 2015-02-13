(* ::Package:: *)

(* ::Section:: *)
(* DeltaV subpackage: Title and comments *)

(* :Title: DeltaV *)
(* :Context: OrbitTransferOptimizer`DeltaV` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`DeltaV`"];

Unprotect@"`*";
ClearAll@"`*";

\[CapitalDelta]V::usage = "Given two points in Polar coordinates, \[Omega], and h, and (for points of the same radius) \[Epsilon], return the total \[CapitalDelta]V of the indicated orbital transfer";

\[CapitalDelta]VVectors::usage = "Given two points in Polar coordinates, \[Omega], h, and (for points of the same radius) \[Epsilon], get the velocity changes as vectors at the first and second points."; 

Begin["`Private`"];

\[CapitalDelta]V[pol1_, pol2_, w_, h_] := Module[
	{r1, th1, vr1, vth1, vz1,
	 r2, th2, vr2, vth2, vz2},
	
	{r1, th1} = pol1["Position"]; {vr1, vth1, vz1} = pol1["Velocity"];
	{r2, th2} = pol2["Position"]; {vr2, vth2, vz2} = pol2["Velocity"];

	dVcs[r1, th1, vr1, vth1, vz1, r2, th2, vr2, vth2, vz2, w, h]
];

dVcs = Compile[{
	{r1, _Real}, {th1, _Real},
	{vr1, _Real}, {vth1, _Real}, {vz1, _Real},
	{r2, _Real}, {th2, _Real},
	{vr2, _Real}, {vth2, _Real}, {vz2, _Real},
	{w, _Real}, {h, _Real}},
	Block[{p, e, a, alA, alB, vA, vB, vrA, vthA, vrB, vthB, DV1, DV2},
	p = -((-r1 r2 Cos[th1 - w] + r1 r2 Cos[th2 - w])/( r1 Cos[th1 - w] - r2 Cos[th2 - w]));
	e = -((r1 - r2)/( r1 Cos[th1 - w] - r2 Cos[th2 - w]));
	a = 1/2 (p/(1 + e) + p/(1 - e));
	alA = ArcTan[(e Sin[th1 - w])/( 1 + e Cos[th1 - w])];
	alB = ArcTan[(e Sin[th2 - w])/( 1 + e Cos[th2 - w])];
	vA = Sqrt[2/r1 - 1/a];
	vB = Sqrt[2/r2 - 1/a];
	vthA = Sign[h] vA Cos[alA];
	vrA = Sign[h] vA Sin[alA];
	vthB = Sign[h] vB Cos[alB];
	vrB = Sign[h] vB Sin[alB];
	
	DV1 = Sqrt[(vthA - vth1)^2 + (vrA - vr1)^2 + vz1^2];
	DV2 = Sqrt[(vthB - vth2)^2 + (vrB - vr2)^2 + vz2^2];
	DV1 + DV2
	], CompilationTarget -> "C", RuntimeOptions -> {"Speed", "EvaluateSymbolically" -> False}
];

\[CapitalDelta]V[pol1_, pol2_, w_, h_, e_] := Module[
	{r,  th1, vr1, vth1, vz1,
	 r2, th2, vr2, vth2, vz2,
	p, alA, v, vth,
	vrA, vrB, vthB, DV1, DV2},

	{r,  th1} = pol1["Position"]; {vr1, vth1, vz1} = pol1["Velocity"];
	{r2, th2} = pol2["Position"]; {vr2, vth2, vz2} = pol2["Velocity"];
 
	p = r (1 + e Cos[w - th1]);
	
	alA = ArcTan[(e Sin[th1 - w])/( 1 + e Cos[th1 - w])];
	v = Sqrt[2/r - (1 - e^2)/p];
	vth = Sign[h] v Cos[alA];
	vrA = Sign[h] v Sin[alA];
	vrB = -vrA;
	
	DV1 = Sqrt[(vth - vth1)^2 + (vrA - vr1)^2 + vz1^2];
	DV2 = Sqrt[(vth - vth2)^2 + (vrB - vr2)^2 + vz2^2];
	DV1 + DV2
];

\[CapitalDelta]VVectors[pol1_, pol2_, w_, h_] := Module[
	{r1, th1, vr1, vth1, vz1,
	 r2, th2, vr2, vth2, vz2,
	 p, e, a, alA, alB, vA, vB,
	 vrA, vthA, vrB, vthB, DV1, DV2},

	{r1, th1} = pol1["Position"]; {vr1, vth1, vz1} = pol1["Velocity"];
	{r2, th2} = pol2["Position"]; {vr2, vth2, vz2} = pol2["Velocity"];

	p = -((-r1 r2 Cos[th1 - w] + r1 r2 Cos[th2 - w])/( r1 Cos[th1 - w] - r2 Cos[th2 - w]));
	e = -((r1 - r2)/( r1 Cos[th1 - w] - r2 Cos[th2 - w]));
	a = 1/2 (p/(1 + e) + p/(1 - e));
	alA = ArcTan[(e Sin[th1 - w])/( 1 + e Cos[th1 - w])];
	alB = ArcTan[(e Sin[th2 - w])/( 1 + e Cos[th2 - w])];
	vA = Sqrt[2/r1 - 1/a];
	vB = Sqrt[2/r2 - 1/a];
	vthA = Sign[h] vA Cos[alA];
	vrA = Sign[h] vA Sin[alA];
	vthB = Sign[h] vB Cos[alB];
	vrB = Sign[h] vB Sin[alB];
	
	DV1 = {vrA - vr1, vthA - vth1, -vz1};
	DV2 = {vrB - vr2, vthB - vth2, vz2};
	{DV1, DV2}
];

\[CapitalDelta]VVectors[pol1_, pol2_, w_, h_, e_] := Module[
	{r,  th1, vr1, vth1, vz1,
	 r2, th2, vr2, vth2, vz2,
	 p, alA, v, vth,
	 vrA, vrB, vthB, DV1, DV2},

	{r,  th1} = pol1["Position"]; {vr1, vth1, vz1} = pol1["Velocity"];
	{r2, th2} = pol2["Position"]; {vr2, vth2, vz2} = pol2["Velocity"];
 
	p = r (1 + e Cos[w - th1]);
	
	alA = ArcTan[(e Sin[th1 - w])/( 1 + e Cos[th1 - w])];
	v = Sqrt[2/r - (1 - e^2)/p];
	vth = Sign[h] v Cos[alA];
	vrA = Sign[h] v Sin[alA];
	vrB = -vrA;
	
	DV1 = {vrA - vr1, vthA - vth1, -vz1};
	DV2 = {vrB - vr2, vthB - vth2, vz2};
	{DV1, DV2}
];

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
