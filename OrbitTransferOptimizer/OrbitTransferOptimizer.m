(* ::Package:: *)

(* ::Section:: *)
(* Keplerian to Cartesian Elements package: Title and comments *)

(* :Title: OrbitTransferOptimizer *)
(* :Context: OrbitTransferOptimizer` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`", {"OrbitTransferOptimizer`Plots`",
					     "OrbitTransferOptimizer`BestTransferTwoOrbits`",
					     "OrbitTransferOptimizer`OrbitCoordinateTransformation`",
					     "OrbitTransferOptimizer`Heading`",
					     "OrbitTransferOptimizer`Utilities`",
					     "OrbitTransferOptimizer`CelestialBodyData`"
						}];

Unprotect@"`*";
ClearAll@"`*";

OrbitTransferOptimizerGUI::usage = "OrbitTransferOptimizerGUI[]: Start the gui.
1. Choose a planet.
2. Enter initial and final orbital elements.
3. Optionally, restrict the range of True Anomaly to search over.
4. Push the 'CalculateBestOrbit' button.";

Begin["`Private`"];

OrbitTransferOptimizerGUI[] := Manipulate[
 Block[{o1, o2, ot, plot, pb1, pb2, 
   col, \[Nu]s1, \[Nu]e1, \[Nu]s2, \[Nu]e2, planet, 
   plRadius, pl\[Mu], plDU, plTU, plVU},
  
  (*From https://docs.google.com/spreadsheet/ccc?key= 0AuySrGPsDeq2dFdaS19xc2lobGc2aWNXUkJsZlVtWFE#gid=1 *)
  (* \[Mu], radius, atmosphere cutoff altitude *)
  
  planet = CelestialBodyData[pl];
  plDU = planet["Radius"] + planet["Atm height"]; (* atmosphere cutoff radius *)
  
  {\[Nu]s1, \[Nu]e1} = Sort[{\[Nu]s1s, \[Nu]e1s}];
  {\[Nu]s2, \[Nu]e2} = Sort[{\[Nu]s2s, \[Nu]e2s}];
  
  o1 = restrictOrbit[<|"Orbit" -> "Nondegenerate", "a" -> a1/plDU, 
     "e" -> e1, "i" -> i1 Degree, 
     "\[CapitalOmega]" -> \[CapitalOmega]1 Degree, 
     "\[Omega]" -> \[Omega]1 Degree, 
     "\[Nu]Range" -> {\[Nu]s1 Degree, \[Nu]e1 Degree}|>];
  o2 = restrictOrbit[<|"Orbit" -> "Nondegenerate", "a" -> a2/plDU, 
     "e" -> e2, "i" -> i2 Degree, 
     "\[CapitalOmega]" -> \[CapitalOmega]2 Degree, 
     "\[Omega]" -> \[Omega]2 Degree, 
     "\[Nu]Range" -> {\[Nu]s2 Degree, \[Nu]e2 Degree}|>];
  
  ot = restrictOrbit[ OrbitFromCoordinate[ KeplerianFromCartesian[CoordinateAfterBurn[fot[[3]]["Burn 1"]]]]];
  plot = OrbitPlot3D[{o1, o2, ot}, {planet["Radius"], planet["Atm height"]}/plDU, fot[[3]]["Burn 1"], fot[[3]]["Burn 2"], boxSize/plDU];
  {pb1, pb2} = RescaleBurnWithPlanet[ProcessBurn[#], planet["\[Mu]"], planet["Radius"], plDU] & /@ {fot[[3]]["Burn 1"], fot[[3]]["Burn 2"]};
  
  ot = KeyDrop[ot, {"\[Nu]Range", "Orbit"}];
  ot["a"] *= plDU ;
  ot["Periapsis Radius"] = (ot["a"]) (1 - ot["e"]);
  ot["Periapsis Altitude"] = ot["Periapsis Radius"] - planet["Radius"];
  
  col = PrettyPrint[{pb1, pb2}, ot];
  
  If[view == "Orbit", plot, col]
  ],
 
 Style["Planet", 12, Bold],
 {{pl, 5, ""}, CelestialBodyList[]},
 Style["Initial Orbit", 12, Bold],
 {{a1, 700, "a"}, 200., 5000., Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{e1, 0, "e"}, 0, .99, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{i1, 0, "i"}, 0, 180, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{\[CapitalOmega]1, 0, "\[CapitalOmega]"}, 0, 360, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{\[Omega]1, 0, "\[Omega]"}, 0, 360, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{\[Nu]s1s, -180, "\[Nu] start"}, -180, 180, AppearanceElements -> {"InputField"}},
 {{\[Nu]e1s, 180, "\[Nu] end"}, -180, 180, AppearanceElements -> {"InputField"}},
 Style["Final Orbit", 12, Bold], {{a2, 900, "a"}, 200., 5000., Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{e2, 0, "e"}, 0, .99, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{i2, 0, "i"}, 0, 180, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{\[CapitalOmega]2, 0, "\[CapitalOmega]"}, 0, 360, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{\[Omega]2, 0, "\[Omega]"}, 0, 360, Appearance -> "Open", AppearanceElements -> {"InputField"}},
 {{\[Nu]s2s, -180, "\[Nu] start"}, -180, 180, AppearanceElements -> {"InputField"}},
 {{\[Nu]e2s, 180, "\[Nu] end"}, -180, 180, AppearanceElements -> {"InputField"}},
 
 {{fot, {0, 0, <|"Total \[CapitalDelta]V" -> 0.11507, 
       "Burn 1" -> <|"Coordinate" -> "Cartesian", 
       "Position" -> {0.738768, 0.738768, 0}, 
       "Velocity" -> {-0.691788, 0.69178, 0}, 
       "VelocityChange" -> {-0.04196, 0.0419669, 0}|>, 
       "Burn 2" -> <|"Coordinate" -> "Cartesian", 
       "Position" -> {-0.94984, -0.94984, 0}, 
       "Velocity" -> {0.570699, -0.570693, 0}, 
       "VelocityChange" -> {0.0394007, -0.03940666, 0}|>|>}, ""}, {"f"}, 
  ButtonBar[{"Calculate Best Orbit" :> (fot = 
        f[{N[a1], e1, i1 , \[CapitalOmega]1, \[Omega]1, \[Nu]s1s, \[Nu]e1s}, {N[ a2], e2, i2, \[CapitalOmega]2, \[Omega]2, \[Nu]s2s, \[Nu]e2s}, pl])}] &},
 
 
 {{view, "Orbit", "View:"}, {"Orbit", "Elements"}},
 {{boxSize, 10000, "ViewBox (km)"}, 1000, 100000},
 AppearanceElements -> None, 
 SaveDefinitions -> True
]

(* PrettyPrint[{burn1, burn2}, transferOrbit]: Print out relevent parameters of the location of the two burns and the transfer orbit itself. *)
PrettyPrint[bs_List, ot_] := Block[{
  pc, r, al, t\[CapitalDelta]V, \[CapitalDelta]Vs, sp, v, ksp, 
  vc, lvlh, all, i, \[Nu]s
},
	pc = NumberForm[Round[#["Position"], 0.001], {9, 3}, ExponentFunction -> (Null &)] & /@ bs;
	\[CapitalDelta]Vs = #["\[CapitalDelta]V"] & /@ bs;
	t\[CapitalDelta]V = \[CapitalDelta]Vs // Total;
	\[CapitalDelta]Vs = NumberForm[#["\[CapitalDelta]V"], {7, 1}] & /@ bs;
	sp     = NumberForm[#["Speed"]   , {7,  1}] & /@ bs;
	r      = NumberForm[#["Radius"]  , {10, 3}, ExponentFunction -> (Null &)] & /@ bs;
	al     = NumberForm[#["Altitude"], {10, 3}] & /@ bs;
	v      = NumberForm[Round[#["Velocity"], 0.1], {6, 1}] & /@ bs;
	vc     = NumberForm[Round[#["VelocityChange"], 0.1], {6, 1}] & /@ bs;
	ksp    = NumberForm[Quantity[#["KSP Navball"], "Degrees"], {3, 1}] & /@ bs;
	lvlh   = NumberForm[Round[#["LVLH Heading"], 0.1], {5, 1}] & /@ bs;
	\[Nu]s = NumberForm[Quantity[#["\[Nu]"]/Degree, "Degrees"], {3, 1}] & /@ bs;
	
	all = Table[Grid[{
	    {Style["Burn " <> ToString[i], Bold], ""},
	    {"\[CapitalDelta]V", Quantity[\[CapitalDelta]Vs[[i]], "Meters"/"Seconds"]},
	    {"Orbital Speed",    Quantity[sp[[i]], "Meters"/"Seconds"]},
	    {"Altitude",         Quantity[al[[i]], "Kilometers"]},
	    {"KSP Navball",      ksp[[i]]},
	    {"True Anomaly",  \[Nu]s[[i]]},
	    {Null, Null},
	    {"Radius", Quantity[r[[i]], "Kilometers"]},
	    {"Cartesian XYZ", ToString[pc[[i]]] <> " km"},
	    {"LVLH Heading", ToString[lvlh[[i]]] <> " m/s"},
	    {"Cart. Vel.", ToString[v[[i]]] <> " m/s"},
	    {"Cart. \[CapitalDelta]V", ToString[vc[[i]]] <> " m/s"},
	    {Null, Null}}, Alignment -> Left],
	  {i, 1, Length[bs]}
	];
	
	AppendTo[all, Grid[{
	   {Style["Transfer Orbit", Bold], ""},
	   {"a",                  ToString[NumberForm[ot["a"], {10, 3}]] <> " km"},
	   {"e",                           NumberForm[ot["e"], {5, 4}]},
	   {"i",                           NumberForm[ Round[Quantity[ot["i"]/Degree, "Degrees"], 0.01], {3, 1}]},
	   {"\[CapitalOmega]",             NumberForm[ Round[Quantity[ot["\[CapitalOmega]"]/Degree, "Degrees"], 0.01], {3, 1}]},
	   {"\[Omega]",                    NumberForm[ Round[Quantity[ot["\[Omega]"]/Degree, "Degrees"], 0.01], {3, 1}]},
	   {"Periapsis Radius",   ToString[NumberForm[ot["Periapsis Radius"], {10, 3}]] <> " km"},
	   {"Periapsis Altitude", ToString[NumberForm[ot["Periapsis Altitude"], {10, 3}]] <> " km"}
	   }, Alignment -> Left]];
	
	PrependTo[all, Grid[{
	   {Style["Total \[CapitalDelta]V", 12, Bold], ""},
	   {"\[CapitalDelta]V", 
	    ToString[NumberForm[t\[CapitalDelta]V, {6, 1}]] <> " m/s"},
	   {Null, Null}
	   }, Alignment -> Left]];
	
	Grid[{all}\[Transpose], Alignment -> Left]
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
];

(* RescaleBurnWithPlanet[burn, \[Mu], planetRadius, DU]: given a Burn with position, velocity in units of DU and VU, rescale using the planet's \[Mu] into km and m/s. *)
RescaleBurnWithPlanet[b_, \[Mu]_, plrad_, DU_] := Module[{ob, ra, TU, VU},
	(* Time unit *)
	TU = Sqrt[DU^3/\[Mu]];
	(* Velocity unit *)
	VU = DU/TU 1000; (* the 1000 is for km to m *)
	ob = b;
	(ob[#] = b[#] DU) & /@ {"Position", "Radius"};
	(ob[#] = b[#] VU) & /@ {"Speed", "Velocity", "VelocityChange", 
	  "LVLH Heading", "\[CapitalDelta]V"};
	ob["Altitude"] = ob["Radius"] - plrad;
	ob
]

f[{a1_, e1_, i1_, \[CapitalOmega]1_, \[Omega]1_, \[Nu]s1s_, \[Nu]e1s_}, {a2_, e2_, i2_, \[CapitalOmega]2_, \[Omega]2_, \[Nu]s2s_, \[Nu]e2s_}, pl_] := 
  Block[{\[Nu]s1, \[Nu]e1, \[Nu]s2, \[Nu]e2, 
  planet, plRadius, pl\[Mu], 
  plDU, plTU, plVU},
   
	planet = CelestialBodyData[pl];
	plDU = planet["Radius"] + planet["Atm height"]; (* atmosphere cutoff radius *)
	
	
	{\[Nu]s1, \[Nu]e1} = Sort[{\[Nu]s1s, \[Nu]e1s}];
	{\[Nu]s2, \[Nu]e2} = Sort[{\[Nu]s2s, \[Nu]e2s}]; 
	BestTransferTwoOrbits[
	<|
		"Orbit" -> "Nondegenerate",
		"a" -> a1/plDU,
		"e" -> e1,
		"i" -> i1 Degree, 
		"\[CapitalOmega]" -> \[CapitalOmega]1 Degree, 
		"\[Omega]" -> \[Omega]1 Degree, 
		"\[Nu]Range" -> {\[Nu]s1s Degree, \[Nu]e1s Degree}
	|>,
	<|
		"Orbit" -> "Nondegenerate",
		"a" -> a2/plDU,
		"e" -> e2, 
		"i" -> i2 Degree,
		"\[CapitalOmega]" -> \[CapitalOmega]2 Degree, 
		"\[Omega]" -> \[Omega]2 Degree, 
		"\[Nu]Range" -> {\[Nu]s2s Degree, \[Nu]e2s Degree}
	|>
	]
];

End[];

SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];

EndPackage[];
