(* ::Package:: *)

(* ::Section:: *)
(* Keplerian to Cartesian Elements package: Title and comments *)


(* :Title: OrbitTransferOptimizer *)
(* :Context: OrbitTransferOptimizer`BestTransferTwoOrbits *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)



(* ::Section:: *)
(* Begin package and help *)


BeginPackage["OrbitTransferOptimizer`BestTransferTwoOrbits`",
				{"OrbitTransferOptimizer`BestTransferTwoPoints`",
				 "OrbitTransferOptimizer`OrbitCoordinateTransformation`",
				 "OrbitTransferOptimizer`Utilities`",
				 "OrbitTransferOptimizer`Heading`"
				}];

Unprotect@"`*";
ClearAll@"`*";

BestTransferTwoOrbits::usage = "Takes two orbits";

ProcessBurn::usage = "Compute ancillary information from Burn 1 and Burn 2";

Begin["Private`"];

BestTransferTwoOrbits[oo1_, oo2_]:= Block[{
 t, o1, o2, nul1, nuh1, nul2, nuh2, 
 minnustep, nustep1, nustep2, mint},
 
	{o1, o2} = restrictOrbit[#]& /@ {oo1, oo2};
	minnustep = \[Pi]/12.-0.00001;
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
	       {nu1, nul1, nuh1, nustep1},
	       {nu2, nul2, nuh2, nustep2}] 
	    , 1];
	mint = MinimalBy[t, #[[3]]["Total \[CapitalDelta]V"] &] // First
]

ProcessBurn[b_] := Module[{ob},
	ob = b;
	ob["Radius"] = Norm[b["Position"]];
	ob["Speed"] = Norm[b["Velocity"]];
	ob["\[CapitalDelta]V"] = Norm[b["VelocityChange"]];
	ob["KSP Navball"] = KSPHeadingFromCartesian[ob]["KSPNavball"];
	ob["LVLH Heading"] = LVLHHeadingFromCartesian[ob]["LVLH"];
	ob["\[Nu]"] = KeplerianFromCartesian[ob]["\[Nu]"];
	ob
]

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
