(* ::Package:: *)

(* ::Section:: *)
(* Plots subpackage: Title and comments *)

(* :Title: Plots *)
(* :Context: OrbitTransferOptimizer`Plots` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`Plots`",
					{"OrbitTransferOptimizer`OrbitCoordinateTransformation`",
					 "OrbitTransferOptimizer`Utilities`"}];

Unprotect@"`*";
ClearAll@"`*";

OrbitPlot3D::usage = "Plot one or many orbits";

Begin["Private`"];

OrbitPlot3D[orb_Association] := OrbitPlot3D[{orb}];

OrbitPlot3D[orbs_List] := Block[{},
	Graphics3D[OrbitLine3D[#]& /@ orbs, PlotRange->{{-5,5},{-5,5},{-5,5}}]
]

OrbitLine3D[o_?(AssociationQ[#] && KeyExistsQ[#, "Orbit"] && #["Orbit"] == "Nondegenerate" &)] := Block[{Nurl, Nurh, Nus},
	{Nurl, Nurh} = o["\[Nu]Range"];
	Nus = Max[Abs[(Nurh - Nurl)/40], 0.05];
	Line[
		Table[
			CartesianFromKeplerian[CoordinateFromOrbit[o, Nu]]["Position"]
		, {Nu, Nurl, Nurh, Nus}]
	]
]

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
