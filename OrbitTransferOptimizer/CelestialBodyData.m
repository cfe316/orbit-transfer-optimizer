(* ::Package:: *)

(* ::Section:: *)
(* CelestialBodyData subpackage: Title and comments *)

(* :Title: CelestialBodyData *)
(* :Context: OrbitTransferOptimizer`CelestialBodyData` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`CelestialBodyData`"];

Unprotect@"`*";
ClearAll@"`*";

CelestialBodyData::usage = "CelestialBodyData[n_]: returns data on the nth gravitating body. 
Data format is as follows:
<| \"Name\"->name,
   \"Radius\"->surface radius in km,
   \"\[Mu]\"->\[Mu] in km^3/s^2,
   \"Atm height\"->height to top of atmosphere in km 
|>
";

CelestialBodyList::usage = "CelestialBodyList[]: Get a list of replacement rules for numbers->names of the bodies.
{1 ->Kerbol, 2->Moho, ... 17->Eeloo, ... }";

Begin["`Private`"];

CelestialBodyList[] := Block[{},
#[[1]] -> #[[2]] & /@ (data\[Transpose][[1 ;; 2]]\[Transpose])
];

CelestialBodyData[n_] := Block[{row},
		
	row = Select[data, #[[1]] == n &][[1]];
 
	(* watch the order there ... *)
	Return[<|"Name" -> row[[2]], "Radius" -> row[[3]], "\[Mu]" -> row[[4]], "Atm height" -> row[[5]]|>];
];


(* Default atmosphere height is 1 rather than 0 km to reduce possible drawing bugs *)
data = {(* num   name            rad      mu            atm height *)
	{1,	"Kerbol",	261600,	1.17233*10^9,	1},
	{2,	"Moho", 	250,	169.,		1},
	{3,	"Eve",  	700,	8170.	,	96.708},
	{4,	"  Gilly",	13,	0.00829,	1},
	{5,	"Kerbin",	600,	3530.,		69.077},
	{6,	"  Mun",  	200,	65.1,		1},
	{7,	"  Minmus",	60,	1.77,		1},
	{8,	"Duna", 	320,	301.,		41.446},
	{9,	"  Ike",  	130,	18.6,		1},
	{10,	"Dres", 	138,	21.5,		1},
	{11,	"Jool", 	6000,	2.8300*10^5,	138.155},
	{12,	"  Laythe",	500,	1960.,		55.262},
	{13,	"  Vall", 	300,	207.,		1},
	{14,	"  Tylo", 	600,	2830.,		1},
	{15,	"  Bop",  	65,	2.49,		1},
	{16,	"  Pol",  	44,	0.722,		1},
	{17,	"Eeloo",	210,	74.4,		1},
	{50,	"Earth",	6371,	398600.441,	60}
};

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

End[];

EndPackage[];
