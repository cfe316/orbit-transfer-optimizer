(* ::Package:: *)

(* ::Section:: *)
(* Keplerian to Cartesian Elements package: Title and comments *)


(* :Title: KeplerianToCartesian *)
(* :Context: KeplerianToCartesian` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)


(* ::Section:: *)
(* Begin package and help *)


BeginPackage["KeplerianToCartesian`"];

Unprotect@"`*";
ClearAll@"`*";

KeplerianToCartesian::usage = 
	"Transform a Keplerian vector {a, e, i, \[CapitalOmega], \[CurlyPi], \[Nu]} into a Cartesian vector {{x, y, z}, {vx, vy, vz}}. Does not support parabolic orbits. Assumes that \[Mu] = 1.

a: Semi-major axis.
e: Eccentricity.
i: Inclination.
\[CapitalOmega]: Longitude of ascending node.
\[CurlyPi]: Longitude of periapsis.
\[Nu]: True anomaly.

Begin["`Private`"];

KeplerianToCartesian[{a_, e_, i_, o_, w_, v_}] :=
Block[{ defaultCoord },
	(* These are to be returned if there is an error: they are less
	obstrusive than printing an error message (which could happen many
	times in a Manipulate[] *)
	defaultCoord = {{0,0,0},{0,0,1}};

	i = Mod[i,\[Pi]];
	{o,w,v} = Mod[{o,w,v},2\[Pi]]

	(* No parabolic orbits. *)
	If[ e == 1 , Return[defaultCoord];];
	If[ e > 1,
		(* Hyperbolic orbits have negative a *)
		If[ a > 0, a *= -1];
		(* Limit v to the correct hyperbola branch *)
		vLimit = ArcCos[-1/e];
		Clip[v, {-vLimit, vLimit}];
	] 



	{{0,1,0},{3,3,3}}];
];

End[ ];

SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];

EndPackage[ ];
