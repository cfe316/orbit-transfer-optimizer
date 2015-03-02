(* ::Package:: *)

(* ::Section:: *)
(* Burn Headings subpackage: Title and comments *)

(* :Title: Heading *)
(* :Context: OrbitTransferOptimizer`Heading` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`Heading`"];

Unprotect@"`*";
ClearAll@"`*";

LVLHHeadingFromCartesian::usage = "Get the 'local vertical, local horizontal' frame  heading for the burn required.

Cartesian coordinate format:
<|
	\"Coordinate\"->\"Cartesian\",
	\"Position\" -> {X, Y, Z},
	\"Velocity\" -> {vX, vY, vZ}, (* velocity before the burn *)
	\"VelocityChange\" -> {vX, vY, vZ} (* \[CapitalDelta]V of the burn *)
|>

LVLHHeading format:
<|
	\"Heading\"->\"LVLH\",
	\"LVLH\"->{vPrograde, vNormal, vRadial}
|>
";

KSPHeadingFromCartesian::usage = "Get the KSP navball heading for the burn.

Cartesian coordinate format:
<|
	\"Coordinate\"->\"Cartesian\",
	\"Position\" -> {X, Y, Z},
	\"Velocity\" -> {vX, vY, vZ}, (* velocity before the burn *)
	\"VelocityChange\" -> {vX, vY, vZ} (* \[CapitalDelta]V of the burn *)
|>

KSPHeading format:
<|
	\"Heading\"->\"KSPNavball\",
	\"KSPNavball\"->{HDG (degrees), Pitch (degrees)}
|>
";


Begin["`Private`"];

LVLHHeadingFromCartesian[cart_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Cartesian" &)] := Module[{ivNorm, radialNorm, orbitNormalNorm, vPro, vNormal, vRad},
	ivNorm = Normalize[cart["Velocity"]]; (* The direction of the initial velocity *)
	radialNorm = Normalize[cart["Position"]];
	dv = cart["VelocityChange"];
	If[Norm[ivNorm] > 0 && Norm[radialNorm \[Cross] ivNorm] > 0,
		vPro = ivNorm . dv;
		vRad = radialNorm . dv;
		orbitNormalNorm = radialNorm \[Cross] ivNorm;
		vNormal = orbitNormalNorm . dv;
	,
		(* Else no initial direction can be determined *)
		{vPro, vNormal, vRad} = {0,0,0};
	];

	Return[<|"Heading"->"LVLH", "LVLH"->{vPro, vNormal, vRad}|>];
];

(* If the position is directly over the north or south pole, the HDG will return 0. *)
KSPHeadingFromCartesian[cart_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Cartesian" &)] := Module[{p, dv, np, ndv, dvRad, tdv, pitch, northCelestialPole, eastward, northward, dveast, dvnorth, HDG},
	p = cart["Position"];
	dv  = cart["VelocityChange"];
	np = Normalize[p];
	ndv = Normalize[dv];
	dvRad = np . dv; 
	tdv = Norm[dv];
	pitch = If[tdv > 0, ArcSin[dvRad/tdv] / Degree, 0];
	
	northCelestialPole = {0,0,1};
	eastward = Normalize[ northCelestialPole \[Cross] p ];
	northward = Normalize[ p \[Cross] eastward ];

	{dveast, dvnorth} = { eastward, northward } . dv;
	HDG = If[ Norm[{dveast, dvnorth}] > 0,
		Mod[(\[Pi]/2 - ArcTan[dveast, dvnorth])/Degree, 360],
		0
	];
	Return[<|"Heading"->"KSPNavball", "KSPNavball"->{HDG, pitch}|>];
];

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
