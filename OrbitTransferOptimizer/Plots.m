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

OrbitPlot3D[orbs_?(Length[#]!=3 &)] := Block[{},
	Graphics3D[{Point[{0,0,0}],
		OrbitLine3D[#]& /@ orbs}
	]
]

OrbitPlot3D[orbs_?(Length[#]==3 &)] := Block[{},
	Graphics3D[{
		Point[{0,0,0}],
		Arrowheads[Small],
		Red, OrbitLine3D[orbs[[1]]], OrbitVelocityArrow3D[orbs[[1]]],
		Green, OrbitLine3D[orbs[[2]]], OrbitVelocityArrow3D[orbs[[2]]],
		Black, OrbitLine3D[orbs[[3]]], OrbitVelocityArrow3D[orbs[[3]]]}
	]
]

OrbitLine3D[o_?(AssociationQ[#] && KeyExistsQ[#, "Orbit"] && #["Orbit"] == "Nondegenerate" &)] := Block[{Nurl, Nurh, Nus},
	{Nurl, Nurh} = o["\[Nu]Range"];
	Nus = Max[Abs[(Nurh - Nurl)/80], 0.05];
	Line[
		Table[
			CartesianFromKeplerian[CoordinateFromOrbit[o, Nu]]["Position"]
		, {Nu, Nurl, Nurh, Nus}]
	]
]

OrbitVelocityArrow3D[o_?(AssociationQ[#] && KeyExistsQ[#, "Orbit"] && #["Orbit"] == "Nondegenerate" &)] := Block[{cart, p, v},
	cart= CartesianFromKeplerian[CoordinateFromOrbit[o,0]];
	p = cart["Position"];
	v = Normalize[cart["Velocity"]] Max[Norm[p], 1];
	Arrow[Line[{p, p +v}]]
]

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
