(* ::Package:: *)

(* ::Section:: *)
(* Keplerian to Cartesian Elements package: Title and comments *)


(* :Title: OrbitTransferOptimizer *)
(* :Context: OrbitTransferOptimizer` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)


(* ::Section:: *)
(* Begin package and help *)


BeginPackage["OrbitTransferOptimizer`", {"MinimizeUnimodalFunction`"}];

Unprotect@"`*";
ClearAll@"`*";

OrbitTransferOptimizer::usage = "Finds the best set of two burns to transfer between two orbits around the same body. Parameters are \[Mu] of the body, then two orbits in the format:

<| \"Orbit\"->\"Nondegenerate\",
	\"a\"->semimajoraxis,
	\"e\"->eccentricity,
	\"i\"->inclination
	\"\[CapitalOmega]\"->longitudeOfAscendingNode
	\"\[CurlyPi]\"->longitudeOfPeriapsis
|>
With an optional key \"\[Nu]Range\"->{\[Nu]Min,\[Nu]Max} to specify that only some regions of each orbit should be searched. If no \[Nu]Range is specified, the default is 0 to 2\[Pi].

Output is in the format:
<|
	\"Total \[CapitalDelta] V\" -> 0,
	\"Burn 1\" -> <|
			\"Initial Orbit \[Nu]\" -> 0,
			\"Afterward Orbit \[Nu]\" -> 0,
			\"Cartesian Heading\" -> {vX, vY, vZ},
			\"LVLH Heading\" -> {vPrograde, vNormal, vAntiradial},
			\"KSP Heading\" -> {Heading(degrees), Pitch(degrees)}
	|>,
	\"Burn 2\" -> <|
			\"Initial Orbit \[Nu]\" -> 0,
			\"Afterward Orbit \[Nu]\" -> 0,
			\"Cartesian Heading\" -> {vX, vY, vZ},
			\"LVLH Heading\" -> {vPrograde, vNormal, vAntiradial},
			\"KSP Heading\" -> {Heading(degrees), Pitch(degrees)}
	|>
|>
"

Begin["`Private`"];

OrbitTransferOptimizer[\[Mu]_,
	initialOrbit_?(AssociationQ[#] && KeyExistsQ[#,"Orbit"] && #["Orbit"] == "Nondegenerate" &),
	finalOrbit_?(AssociationQ[#] && KeyExistsQ[#,"Orbit"] && #["Orbit"] == "Nondegenerate" &) ] := Module[{},

	<|
		"Total \[CapitalDelta]V" -> 0,
		"Burn 1" -> <|
				"Initial Orbit \[Nu]" -> 0,
				"Afterward Orbit \[Nu]" -> 0,
				"Cartesian Heading" -> {0, 0, 0},
				"LVLH Heading" -> {0, 0, 0},
				"KSP Heading" -> {0, 0}
		|>,
		"Burn 2" -> <|
				"Initial Orbit \[Nu]" -> 0,
				"Afterward Orbit \[Nu]" -> 0,
				"Cartesian Heading" -> {0, 0, 0},
				"LVLH Heading" -> {0, 0, 0},
				"KSP Heading" -> {0, 0}
		|>
	|>
] 

End[];

SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];

EndPackage[];
