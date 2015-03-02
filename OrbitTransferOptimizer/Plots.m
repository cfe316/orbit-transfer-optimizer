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
	Graphics3D[{
		Sphere[{0,0,0},1.5],
		OrbitLine3D[#]& /@ orbs,
		OrbitVelocityArrow3D[#] & /@ orbs},
		ImageSize->Large
	]
]

OrbitPlot3D[orbs_?(Length[#]==3 &), r_, b1_, b2_, boxsize_] := Block[{s},
	s = boxsize/2;
	Graphics3D[{
		Sphere[{0,0,0},r[[1]]+r[[2]]],
		Arrowheads[Small],
		Red, OrbitLine3D[orbs[[1]]], OrbitVelocityArrow3D[orbs[[1]]],
		Blue, OrbitLine3D[orbs[[2]]], OrbitVelocityArrow3D[orbs[[2]]],
		Green, OrbitLine3D[orbs[[3]]], OrbitVelocityArrow3D[orbs[[3]]],
		Black,
		BurnVelocityArrow3D[b1],
		BurnVelocityArrow3D[b2]},
		PlotRange->{{-s,s},{-s,s},{-s,s}}
		, ImageSize->Large
	]
]

OrbitPlot3D[orbs_?(Length[#]==3 &)] := Block[{},
	Graphics3D[{
		Point[{0,0,0}],
		Arrowheads[Small],
		Red, OrbitLine3D[orbs[[1]]], OrbitVelocityArrow3D[orbs[[1]]],
		Green, OrbitLine3D[orbs[[2]]], OrbitVelocityArrow3D[orbs[[2]]],
		Blue, OrbitLine3D[orbs[[3]]], OrbitVelocityArrow3D[orbs[[3]]]},
		PlotRange->{{-4,4},{-4,4},{-4,4}}
	]
]

OrbitLine3D[o_?(AssociationQ[#] && KeyExistsQ[#, "Orbit"] && #["Orbit"] == "Nondegenerate" &)] := Block[{Nurl, Nurh, Nus},
	{Nurl, Nurh} = o["\[Nu]Range"];
	Nus = Max[Abs[(Nurh - Nurl)/160], 0.02];
	Line[
		Table[
			CartesianFromKeplerian[CoordinateFromOrbit[o, Nu]]["Position"]
		, {Nu, Nurl, Nurh, Nus}]
	]
]

OrbitVelocityArrow3D[o_?(AssociationQ[#] && KeyExistsQ[#, "Orbit"] && #["Orbit"] == "Nondegenerate" &)] := Block[{cart, p, v},
	cart= CartesianFromKeplerian[CoordinateFromOrbit[o,0]];
	p = cart["Position"];
	v = Normalize[cart["Velocity"]] Sqrt[Max[Norm[p], 1]];
	Arrow[Line[{p, p +v}]]
]

BurnVelocityArrow3D[b_?(AssociationQ[#] && KeyExistsQ[#, "Coordinate"] && #["Coordinate"] == "Cartesian" &)] := Block[{p, dv},
	p = b["Position"];
	dv= b["VelocityChange"];
	dv = Normalize[dv] Sqrt[Max[Norm[p],1]]; 
	If[Norm[dv]>0, Arrow[Line[{p, p + dv}]]]
]

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
