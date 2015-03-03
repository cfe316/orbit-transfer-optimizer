(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    130412,       2523]
NotebookOptionsPosition[    130872,       2515]
NotebookOutlinePosition[    131414,       2538]
CellTagsIndexPosition[    131371,       2535]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a1$$ = 1000, $CellContext`a2$$ = 
    2000, $CellContext`boxSize$$ = 5000, $CellContext`e1$$ = 
    0, $CellContext`e2$$ = 0, $CellContext`fot$$ = {0, Pi, 
     Association[
     "Total \[CapitalDelta]V" -> 0.23267769515830777`, "Burn 1" -> 
      Association[
       "Coordinate" -> "Cartesian", 
        "Position" -> {1.4945962871239036`, 0., 0.}, 
        "Velocity" -> {0., 0.8179712708891431, 0.}, 
        "VelocityChange" -> {-4.143705749094444*^-6, 0.1265405959853111, 0.}],
       "Burn 2" -> 
      Association[
       "Coordinate" -> "Cartesian", 
        "Position" -> {-2.989192574247807, 3.660705118087614*^-16, 0.}, 
        "Velocity" -> {-4.14370574921659*^-6, -0.4722559334372272, 0.}, 
        "VelocityChange" -> {4.143705749145758*^-6, -0.10613709902426433`, 
         0.}]]}, $CellContext`i1$$ = 0, $CellContext`i2$$ = 
    0, $CellContext`pl$$ = 5, $CellContext`view$$ = 
    "Orbit", $CellContext`\[Nu]e1s$$ = 180, $CellContext`\[Nu]e2s$$ = 
    180, $CellContext`\[Nu]s1s$$ = -180, $CellContext`\[Nu]s2s$$ = -180, \
$CellContext`\[Omega]1$$ = 0, $CellContext`\[CapitalOmega]1$$ = 
    0, $CellContext`\[Omega]2$$ = 0, $CellContext`\[CapitalOmega]2$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Planet", 12, Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`pl$$], 5, ""}, {
      1 -> "Kerbol", 2 -> "Moho", 3 -> "Eve", 4 -> "  Gilly", 5 -> "Kerbin", 
       6 -> "  Mun", 7 -> "  Minmus", 8 -> "Duna", 9 -> "  Ike", 10 -> "Dres",
        11 -> "Jool", 12 -> "  Laythe", 13 -> "  Vall", 14 -> "  Tylo", 15 -> 
       "  Bop", 16 -> "  Pol", 17 -> "Eeloo", 50 -> "Earth"}}, {
      Hold[
       Style["Initial Orbit", 12, Bold]], 
      Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`a1$$], 700, "a"}, 200., 5000.}, {{
       Hold[$CellContext`e1$$], 0, "e"}, 0, 0.99}, {{
       Hold[$CellContext`i1$$], 0, "i"}, 0, 180}, {{
       Hold[$CellContext`\[CapitalOmega]1$$], 0, "\[CapitalOmega]"}, 0, 
      360}, {{
       Hold[$CellContext`\[Omega]1$$], 0, "\[CurlyPi]"}, 0, 360}, {{
       Hold[$CellContext`\[Nu]s1s$$], -180, "\[Nu] start"}, -180, 180}, {{
       Hold[$CellContext`\[Nu]e1s$$], 180, "\[Nu] end"}, -180, 180}, {
      Hold[
       Style["Final Orbit", 12, Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
      
       Hold[$CellContext`a2$$], 900, "a"}, 200., 5000.}, {{
       Hold[$CellContext`e2$$], 0, "e"}, 0, 0.99}, {{
       Hold[$CellContext`i2$$], 0, "i"}, 0, 180}, {{
       Hold[$CellContext`\[CapitalOmega]2$$], 0, "\[CapitalOmega]"}, 0, 
      360}, {{
       Hold[$CellContext`\[Omega]2$$], 0, "\[CurlyPi]"}, 0, 360}, {{
       Hold[$CellContext`\[Nu]s2s$$], -180, "\[Nu] start"}, -180, 180}, {{
       Hold[$CellContext`\[Nu]e2s$$], 180, "\[Nu] end"}, -180, 180}, {{
       Hold[$CellContext`fot$$], {0, 0, 
        Association[
        "Total \[CapitalDelta]V" -> 0.11507, "Burn 1" -> 
         Association[
          "Coordinate" -> "Cartesian", "Position" -> {0.738768, 0.738768, 0}, 
           "Velocity" -> {-0.691788, 0.69178, 0}, 
           "VelocityChange" -> {-0.04196, 0.0419669, 0}], "Burn 2" -> 
         Association[
          "Coordinate" -> "Cartesian", "Position" -> {-0.94984, -0.94984, 0}, 
           "Velocity" -> {0.570699, -0.570693, 0}, 
           "VelocityChange" -> {0.0394007, -0.03940666, 0}]]}, ""}, {"f"}, 
      Dynamic[
      ButtonBar[{
        "Calculate Best Orbit" :> ($CellContext`fot$$ = $CellContext`f[{
             
             N[$CellContext`a1$$], $CellContext`e1$$, $CellContext`i1$$, \
$CellContext`\[CapitalOmega]1$$, $CellContext`\[Omega]1$$, \
$CellContext`\[Nu]s1s$$, $CellContext`\[Nu]e1s$$}, {
             
             N[$CellContext`a2$$], $CellContext`e2$$, $CellContext`i2$$, \
$CellContext`\[CapitalOmega]2$$, $CellContext`\[Omega]2$$, \
$CellContext`\[Nu]s2s$$, $CellContext`\[Nu]e2s$$}, $CellContext`pl$$])}]& ]}, \
{{
       Hold[$CellContext`view$$], "Orbit", "View:"}, {"Orbit", "Elements"}}, {{
       Hold[$CellContext`boxSize$$], 10000, "ViewBox (km)"}, 1000, 100000}}, 
    Typeset`size$$ = {576., {310., 315.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`pl$10698$$ = False, $CellContext`a1$10703$$ = 
    0, $CellContext`e1$10704$$ = 0, $CellContext`i1$10705$$ = 
    0, $CellContext`\[CapitalOmega]1$10706$$ = 
    0, $CellContext`\[Omega]1$10707$$ = 0, $CellContext`\[Nu]s1s$10708$$ = 
    0, $CellContext`\[Nu]e1s$10709$$ = 0, $CellContext`a2$10710$$ = 
    0, $CellContext`e2$10711$$ = 0, $CellContext`i2$10712$$ = 
    0, $CellContext`view$10713$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a1$$ = 700, $CellContext`a2$$ = 
        900, $CellContext`boxSize$$ = 10000, $CellContext`e1$$ = 
        0, $CellContext`e2$$ = 0, $CellContext`fot$$ = {0, 0, 
          Association[
          "Total \[CapitalDelta]V" -> 0.11507, "Burn 1" -> 
           Association[
            "Coordinate" -> "Cartesian", 
             "Position" -> {0.738768, 0.738768, 0}, 
             "Velocity" -> {-0.691788, 0.69178, 0}, 
             "VelocityChange" -> {-0.04196, 0.0419669, 0}], "Burn 2" -> 
           Association[
            "Coordinate" -> "Cartesian", 
             "Position" -> {-0.94984, -0.94984, 0}, 
             "Velocity" -> {0.570699, -0.570693, 0}, 
             "VelocityChange" -> {
              0.0394007, -0.03940666, 0}]]}, $CellContext`i1$$ = 
        0, $CellContext`i2$$ = 0, $CellContext`pl$$ = 5, $CellContext`view$$ = 
        "Orbit", $CellContext`\[Nu]e1s$$ = 180, $CellContext`\[Nu]e2s$$ = 
        180, $CellContext`\[Nu]s1s$$ = -180, $CellContext`\[Nu]s2s$$ = -180, \
$CellContext`\[Omega]1$$ = 0, $CellContext`\[CapitalOmega]1$$ = 
        0, $CellContext`\[Omega]2$$ = 0, $CellContext`\[CapitalOmega]2$$ = 0},
       "ControllerVariables" :> {
        Hold[$CellContext`pl$$, $CellContext`pl$10698$$, False], 
        Hold[$CellContext`a1$$, $CellContext`a1$10703$$, 0], 
        Hold[$CellContext`e1$$, $CellContext`e1$10704$$, 0], 
        Hold[$CellContext`i1$$, $CellContext`i1$10705$$, 0], 
        Hold[$CellContext`\[CapitalOmega]1$$, \
$CellContext`\[CapitalOmega]1$10706$$, 0], 
        Hold[$CellContext`\[Omega]1$$, $CellContext`\[Omega]1$10707$$, 0], 
        Hold[$CellContext`\[Nu]s1s$$, $CellContext`\[Nu]s1s$10708$$, 0], 
        Hold[$CellContext`\[Nu]e1s$$, $CellContext`\[Nu]e1s$10709$$, 0], 
        Hold[$CellContext`a2$$, $CellContext`a2$10710$$, 0], 
        Hold[$CellContext`e2$$, $CellContext`e2$10711$$, 0], 
        Hold[$CellContext`i2$$, $CellContext`i2$10712$$, 0], 
        Hold[$CellContext`view$$, $CellContext`view$10713$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Block[{$CellContext`o1, $CellContext`o2, $CellContext`ot, \
$CellContext`plot, $CellContext`pb1, $CellContext`pb2, $CellContext`col, \
$CellContext`\[Nu]s1, $CellContext`\[Nu]e1, $CellContext`\[Nu]s2, \
$CellContext`\[Nu]e2, $CellContext`planet, $CellContext`plRadius, \
$CellContext`pl\[Mu], $CellContext`plDU, $CellContext`plTU, \
$CellContext`plVU}, $CellContext`planet = \
$CellContext`CelestialBodyData[$CellContext`pl$$]; $CellContext`plDU = \
$CellContext`planet["Radius"] + $CellContext`planet[
           "Atm height"]; {$CellContext`\[Nu]s1, $CellContext`\[Nu]e1} = 
         Sort[{$CellContext`\[Nu]s1s$$, $CellContext`\[Nu]e1s$$}]; \
{$CellContext`\[Nu]s2, $CellContext`\[Nu]e2} = 
         Sort[{$CellContext`\[Nu]s2s$$, $CellContext`\[Nu]e2s$$}]; \
$CellContext`o1 = $CellContext`restrictOrbit[
           Association[
           "Orbit" -> "Nondegenerate", 
            "a" -> $CellContext`a1$$/$CellContext`plDU, 
            "e" -> $CellContext`e1$$, "i" -> $CellContext`i1$$ Degree, 
            "\[CapitalOmega]" -> $CellContext`\[CapitalOmega]1$$ Degree, 
            "\[CurlyPi]" -> $CellContext`\[Omega]1$$ Degree, 
            "\[Nu]Range" -> {$CellContext`\[Nu]s1 
              Degree, $CellContext`\[Nu]e1 
              Degree}]]; $CellContext`o2 = $CellContext`restrictOrbit[
           Association[
           "Orbit" -> "Nondegenerate", 
            "a" -> $CellContext`a2$$/$CellContext`plDU, 
            "e" -> $CellContext`e2$$, "i" -> $CellContext`i2$$ Degree, 
            "\[CapitalOmega]" -> $CellContext`\[CapitalOmega]2$$ Degree, 
            "\[CurlyPi]" -> $CellContext`\[Omega]2$$ Degree, 
            "\[Nu]Range" -> {$CellContext`\[Nu]s2 
              Degree, $CellContext`\[Nu]e2 
              Degree}]]; $CellContext`ot = $CellContext`restrictOrbit[
           $CellContext`OrbitFromCoordinate[
            $CellContext`KeplerianFromCartesian[
             $CellContext`CoordinateAfterBurn[
              Part[$CellContext`fot$$, 3][
              "Burn 1"]]]]]; $CellContext`plot = \
$CellContext`OrbitPlot3D[{$CellContext`o1, $CellContext`o2, $CellContext`ot}, {
             $CellContext`planet["Radius"], 
             $CellContext`planet["Atm height"]}/$CellContext`plDU, 
           Part[$CellContext`fot$$, 3]["Burn 1"], 
           Part[$CellContext`fot$$, 3][
           "Burn 2"], $CellContext`boxSize$$/$CellContext`plDU]; \
{$CellContext`pb1, $CellContext`pb2} = 
         Map[$CellContext`RescaleBurnWithPlanet[
            $CellContext`ProcessBurn[#], 
            $CellContext`planet["\[Mu]"], 
            $CellContext`planet["Radius"], $CellContext`plDU]& , {
            Part[$CellContext`fot$$, 3]["Burn 1"], 
            Part[$CellContext`fot$$, 3]["Burn 2"]}]; $CellContext`ot = 
         KeyDrop[$CellContext`ot, {"\[Nu]Range", "Orbit"}]; TimesBy[
          $CellContext`ot["a"], $CellContext`plDU]; $CellContext`ot[
          "Periapsis Radius"] = $CellContext`ot["a"] (1 - $CellContext`ot[
           "e"]); $CellContext`ot[
          "Periapsis Altitude"] = $CellContext`ot[
           "Periapsis Radius"] - $CellContext`planet[
          "Radius"]; $CellContext`col = \
$CellContext`PrettyPrint[{$CellContext`pb1, $CellContext`pb2}, \
$CellContext`ot]; 
        If[$CellContext`view$$ == 
          "Orbit", $CellContext`plot, $CellContext`col]], "Specifications" :> {
        Style[
        "Planet", 12, Bold], {{$CellContext`pl$$, 5, ""}, {
         1 -> "Kerbol", 2 -> "Moho", 3 -> "Eve", 4 -> "  Gilly", 5 -> 
          "Kerbin", 6 -> "  Mun", 7 -> "  Minmus", 8 -> "Duna", 9 -> "  Ike", 
          10 -> "Dres", 11 -> "Jool", 12 -> "  Laythe", 13 -> "  Vall", 14 -> 
          "  Tylo", 15 -> "  Bop", 16 -> "  Pol", 17 -> "Eeloo", 50 -> 
          "Earth"}}, 
        Style[
        "Initial Orbit", 12, Bold], {{$CellContext`a1$$, 700, "a"}, 200., 
         5000., Appearance -> "Open", 
         AppearanceElements -> {"InputField"}}, {{$CellContext`e1$$, 0, "e"}, 
         0, 0.99, Appearance -> "Open", 
         AppearanceElements -> {"InputField"}}, {{$CellContext`i1$$, 0, "i"}, 
         0, 180, Appearance -> "Open", 
         AppearanceElements -> {
          "InputField"}}, {{$CellContext`\[CapitalOmega]1$$, 0, 
          "\[CapitalOmega]"}, 0, 360, Appearance -> "Open", 
         AppearanceElements -> {"InputField"}}, {{$CellContext`\[Omega]1$$, 0,
           "\[CurlyPi]"}, 0, 360, Appearance -> "Open", 
         AppearanceElements -> {
          "InputField"}}, {{$CellContext`\[Nu]s1s$$, -180, 
          "\[Nu] start"}, -180, 180, 
         AppearanceElements -> {"InputField"}}, {{$CellContext`\[Nu]e1s$$, 
          180, "\[Nu] end"}, -180, 180, AppearanceElements -> {"InputField"}}, 
        Style[
        "Final Orbit", 12, Bold], {{$CellContext`a2$$, 900, "a"}, 200., 5000.,
          Appearance -> "Open", 
         AppearanceElements -> {"InputField"}}, {{$CellContext`e2$$, 0, "e"}, 
         0, 0.99, Appearance -> "Open", 
         AppearanceElements -> {"InputField"}}, {{$CellContext`i2$$, 0, "i"}, 
         0, 180, Appearance -> "Open", 
         AppearanceElements -> {
          "InputField"}}, {{$CellContext`\[CapitalOmega]2$$, 0, 
          "\[CapitalOmega]"}, 0, 360, Appearance -> "Open", 
         AppearanceElements -> {"InputField"}}, {{$CellContext`\[Omega]2$$, 0,
           "\[CurlyPi]"}, 0, 360, Appearance -> "Open", 
         AppearanceElements -> {
          "InputField"}}, {{$CellContext`\[Nu]s2s$$, -180, 
          "\[Nu] start"}, -180, 180, 
         AppearanceElements -> {"InputField"}}, {{$CellContext`\[Nu]e2s$$, 
          180, "\[Nu] end"}, -180, 180, 
         AppearanceElements -> {"InputField"}}, {{$CellContext`fot$$, {0, 0, 
           Association[
           "Total \[CapitalDelta]V" -> 0.11507, "Burn 1" -> 
            Association[
             "Coordinate" -> "Cartesian", 
              "Position" -> {0.738768, 0.738768, 0}, 
              "Velocity" -> {-0.691788, 0.69178, 0}, 
              "VelocityChange" -> {-0.04196, 0.0419669, 0}], "Burn 2" -> 
            Association[
             "Coordinate" -> "Cartesian", 
              "Position" -> {-0.94984, -0.94984, 0}, 
              "Velocity" -> {0.570699, -0.570693, 0}, 
              "VelocityChange" -> {0.0394007, -0.03940666, 0}]]}, ""}, {"f"}, 
         
         Dynamic[
         ButtonBar[{
           "Calculate Best Orbit" :> ($CellContext`fot$$ = $CellContext`f[{
                
                N[$CellContext`a1$$], $CellContext`e1$$, $CellContext`i1$$, \
$CellContext`\[CapitalOmega]1$$, $CellContext`\[Omega]1$$, \
$CellContext`\[Nu]s1s$$, $CellContext`\[Nu]e1s$$}, {
                
                N[$CellContext`a2$$], $CellContext`e2$$, $CellContext`i2$$, \
$CellContext`\[CapitalOmega]2$$, $CellContext`\[Omega]2$$, \
$CellContext`\[Nu]s2s$$, $CellContext`\[Nu]e2s$$}, $CellContext`pl$$])}]& ]}, \
{{$CellContext`view$$, "Orbit", "View:"}, {
         "Orbit", "Elements"}}, {{$CellContext`boxSize$$, 10000, 
          "ViewBox (km)"}, 1000, 100000}}, 
      "Options" :> {AppearanceElements -> None}, "DefaultOptions" :> {}],
     ImageSizeCache->{899., {416., 421.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`CelestialBodyData[
         Pattern[$CellContext`n, 
          Blank[]]] := Block[{$CellContext`row}, $CellContext`row = Part[
            Select[$CellContext`data, Part[#, 1] == $CellContext`n& ], 1]; 
         Return[
           Association[
           "Name" -> Part[$CellContext`row, 2], "Radius" -> 
            Part[$CellContext`row, 3], "\[Mu]" -> Part[$CellContext`row, 4], 
            "Atm height" -> Part[$CellContext`row, 5]]]; 
         Null], $CellContext`data = {{1, "Kerbol", 261600, 1.17233*^9, 1}, {
         2, "Moho", 250, 169., 1}, {3, "Eve", 700, 8170., 96.708}, {
         4, "  Gilly", 13, 0.00829, 1}, {5, "Kerbin", 600, 3530., 69.077}, {
         6, "  Mun", 200, 65.1, 1}, {7, "  Minmus", 60, 1.77, 1}, {
         8, "Duna", 320, 301., 41.446}, {9, "  Ike", 130, 18.6, 1}, {
         10, "Dres", 138, 21.5, 1}, {11, "Jool", 6000, 283000., 138.155}, {
         12, "  Laythe", 500, 1960., 55.262}, {13, "  Vall", 300, 207., 1}, {
         14, "  Tylo", 600, 2830., 1}, {15, "  Bop", 65, 2.49, 1}, {
         16, "  Pol", 44, 0.722, 1}, {17, "Eeloo", 210, 74.4, 1}, {
         50, "Earth", 6371, 398600.441, 60}}, $CellContext`restrictOrbit[
         PatternTest[
          Pattern[$CellContext`kep, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Orbit"], #["Orbit"] == "Nondegenerate"]& ]] := 
       Block[{$CellContext`outputKep, $CellContext`e, $CellContext`a, 
          O}, $CellContext`e = $CellContext`kep["e"]; 
         If[$CellContext`e == 1, $CellContext`e = 1.001; 
           Null]; $CellContext`a = $CellContext`kep["a"]; 
         If[$CellContext`e > 
           1, $CellContext`nLimit = 
            0.99 ArcCos[(-1)/$CellContext`e]; $CellContext`a = -
             Abs[$CellContext`a]; 
           Null]; $CellContext`outputKep = $CellContext`kep; \
$CellContext`outputKep["a"] = $CellContext`a; $CellContext`outputKep[
           "e"] = $CellContext`e; If[
           
           Or[$CellContext`kep["i"] == 0, $CellContext`kep["i"] == 
            Pi], $CellContext`outputKep["\[CapitalOmega]"] = 
           0]; $CellContext`outputKep[
           "\[Omega]"] = $CellContext`kep[
            "\[CurlyPi]"] - $CellContext`outputKep["\[CapitalOmega]"]; 
         Return[
           $CellContext`restrict\[Nu]Range[$CellContext`outputKep]]; 
         Null], $CellContext`restrict\[Nu]Range[
         PatternTest[
          Pattern[$CellContext`kep, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Orbit"], #["Orbit"] == "Nondegenerate"]& ]] := 
       Block[{$CellContext`outputKep, $CellContext`e, $CellContext`nLimit, \
$CellContext`onrmin, $CellContext`onrmax, $CellContext`cnrmin, \
$CellContext`cnrmax}, $CellContext`e = $CellContext`kep[
           "e"]; $CellContext`nLimit = Pi; 
         If[$CellContext`e > 
           1, $CellContext`nLimit = 0.99 ArcCos[(-1)/$CellContext`e]; Null]; 
         If[
           
           KeyExistsQ[$CellContext`kep, 
            "\[Nu]Range"], {$CellContext`onrmin, $CellContext`onrmax} = \
$CellContext`kep["\[Nu]Range"]; $CellContext`cnrmin = 
            Max[{-$CellContext`nLimit, $CellContext`onrmin}]; \
$CellContext`cnrmax = Min[{$CellContext`nLimit, $CellContext`onrmax}]; 
           Null, {$CellContext`cnrmin, $CellContext`cnrmax} = \
{-$CellContext`nLimit, $CellContext`nLimit}; 
           Null]; $CellContext`outputKep = $CellContext`kep; \
$CellContext`outputKep[
           "\[Nu]Range"] = {$CellContext`cnrmin, $CellContext`cnrmax}; 
         Return[$CellContext`outputKep]; 
         Null], $CellContext`OrbitFromCoordinate[
         PatternTest[
          Pattern[$CellContext`k, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Keplerian"]& ]] := 
       Block[{$CellContext`o}, $CellContext`o = 
          KeyDrop[$CellContext`k, {"Coordinate", "\[Nu]"}]; $CellContext`o[
           "Orbit"] = 
          "Nondegenerate"; $CellContext`restrictOrbit[$CellContext`o]], \
$CellContext`KeplerianFromCartesian[
         PatternTest[
          Pattern[$CellContext`cart, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ]] := 
       Module[{$CellContext`x, $CellContext`y, $CellContext`z, \
$CellContext`vx, $CellContext`vy, $CellContext`vz, $CellContext`r, \
$CellContext`v, $CellContext`rMag, $CellContext`vMag, $CellContext`a, \
$CellContext`e, $CellContext`i, $CellContext`\[CapitalOmega], $CellContext`\
\[Omega], $CellContext`M, $CellContext`nu, $CellContext`\[Theta], \
$CellContext`EA, $CellContext`eMag, $CellContext`p, $CellContext`h, \
$CellContext`hMag, $CellContext`n, $CellContext`nMag, $CellContext`argLat, \
$CellContext`truLon}, {$CellContext`x, $CellContext`y, $CellContext`z} = 
          Chop[
            $CellContext`cart[
            "Position"]]; {$CellContext`vx, $CellContext`vy, $CellContext`vz} = 
          Chop[
            $CellContext`cart[
            "Velocity"]]; $CellContext`r = {$CellContext`x, $CellContext`y, \
$CellContext`z}; $CellContext`v = {$CellContext`vx, $CellContext`vy, \
$CellContext`vz}; {$CellContext`rMag, $CellContext`vMag} = 
          Map[Norm[#]& , {$CellContext`r, $CellContext`v}]; $CellContext`h = 
          Cross[$CellContext`r, $CellContext`v]; $CellContext`hMag = 
          Norm[$CellContext`h]; $CellContext`n = 
          Cross[{0, 0, 1}, $CellContext`h]; $CellContext`nMag = 
          Norm[$CellContext`n]; $CellContext`e = ($CellContext`vMag^2 - 
             1/$CellContext`rMag) $CellContext`r - 
           Dot[$CellContext`r, $CellContext`v] $CellContext`v; \
$CellContext`eMag = 
          Norm[$CellContext`e]; $CellContext`zeta = $CellContext`vMag^2/2 - 
           1/$CellContext`rMag; $CellContext`a = (-1)/(
           2 $CellContext`zeta); $CellContext`i = 
          ArcCos[Part[$CellContext`h, 
              3]/$CellContext`hMag]; $CellContext`\[CapitalOmega] = If[
            And[Part[$CellContext`n, 1] == 0, Part[$CellContext`n, 2] == 0], 
            0, 
            Mod[
             ArcTan[
              Part[$CellContext`n, 1], 
              Part[$CellContext`n, 2]], 2 Pi]]; $CellContext`\[Omega] = 
          If[Dot[$CellContext`n, $CellContext`e] == 0, 0, 
            ArcCos[
            Dot[$CellContext`n, $CellContext`e]/($CellContext`nMag \
$CellContext`eMag)]]; $CellContext`lonPer = 
          If[Part[$CellContext`e, 1] == 0, 0, 
            ArcCos[
            Part[$CellContext`e, 1]/$CellContext`eMag]]; $CellContext`nu = 
          If[Dot[$CellContext`e, $CellContext`r] == 0, 0, 
            ArcCos[
            Dot[$CellContext`e, $CellContext`r]/($CellContext`eMag \
$CellContext`rMag)]]; $CellContext`argLat = 
          If[Dot[$CellContext`n, $CellContext`r] == 0, 0, 
            ArcCos[
            Dot[$CellContext`n, $CellContext`r]/($CellContext`nMag \
$CellContext`rMag)]]; $CellContext`truLon = 
          ArcCos[Part[$CellContext`r, 1]/$CellContext`rMag]; 
         If[
          Part[$CellContext`e, 3] < 0, $CellContext`\[Omega] = 
           2 Pi - $CellContext`\[Omega]]; 
         If[Dot[$CellContext`r, $CellContext`v] < 0, $CellContext`nu = 
           2 Pi - $CellContext`nu]; 
         If[Part[$CellContext`e, 2] < 0, $CellContext`lonPer = 
           2 Pi - $CellContext`lonPer]; 
         If[Part[$CellContext`r, 3] < 0, $CellContext`argLat = 
           2 Pi - $CellContext`argLat]; 
         If[Part[$CellContext`r, 2] < 0, $CellContext`truLon = 
           2 Pi - $CellContext`truLon]; 
         If[$CellContext`i == 
           0., $CellContext`\[Omega] = $CellContext`lonPer]; 
         If[Abs[$CellContext`i - Pi] < 10^(-10), $CellContext`\[Omega] = 
           2 Pi - $CellContext`lonPer]; Return[
           Association[
           "Coordinate" -> "Keplerian", "a" -> $CellContext`a, 
            "e" -> $CellContext`eMag, "i" -> $CellContext`i, 
            "\[CapitalOmega]" -> $CellContext`\[CapitalOmega], 
            "\[CurlyPi]" -> $CellContext`\[Omega] + $CellContext`\
\[CapitalOmega], "\[Omega]" -> $CellContext`\[Omega], "\[Nu]" -> 
            Re[$CellContext`nu]]]; Null], $CellContext`CoordinateAfterBurn[
         PatternTest[
          Pattern[$CellContext`c, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"]]& ]] := 
       Block[{$CellContext`v, $CellContext`vc, $CellContext`t}, \
$CellContext`t = $CellContext`c[
           "Coordinate"]; $CellContext`v = $CellContext`c[
           "Velocity"]; $CellContext`vc = $CellContext`c["VelocityChange"]; 
         Association[
          "Coordinate" -> $CellContext`t, 
           "Position" -> $CellContext`c["Position"], 
           "Velocity" -> $CellContext`v + $CellContext`vc]], \
$CellContext`OrbitPlot3D[
         Pattern[$CellContext`orb, 
          Blank[
          Association]]] := $CellContext`OrbitPlot3D[{$CellContext`orb}], \
$CellContext`OrbitPlot3D[
         PatternTest[
          Pattern[$CellContext`orbs, 
           Blank[]], Length[#] != 3& ]] := Block[{}, 
         Graphics3D[{
           Sphere[{0, 0, 0}, 1.5], 
           Map[$CellContext`OrbitLine3D[#]& , $CellContext`orbs], 
           Map[$CellContext`OrbitVelocityArrow3D[#]& , $CellContext`orbs]}, 
          ImageSize -> Large]], $CellContext`OrbitPlot3D[
         PatternTest[
          Pattern[$CellContext`orbs, 
           Blank[]], Length[#] == 3& ], 
         Pattern[$CellContext`r, 
          Blank[]], 
         Pattern[$CellContext`b1, 
          Blank[]], 
         Pattern[$CellContext`b2, 
          Blank[]], 
         Pattern[$CellContext`boxsize, 
          Blank[]]] := 
       Block[{$CellContext`s}, $CellContext`s = $CellContext`boxsize/2; 
         Graphics3D[{
            
            Sphere[{0, 0, 0}, Part[$CellContext`r, 1] + 
             Part[$CellContext`r, 2]], 
            Arrowheads[Small], Red, 
            $CellContext`OrbitLine3D[
             Part[$CellContext`orbs, 1]], 
            $CellContext`OrbitVelocityArrow3D[
             Part[$CellContext`orbs, 1]], Blue, 
            $CellContext`OrbitLine3D[
             Part[$CellContext`orbs, 2]], 
            $CellContext`OrbitVelocityArrow3D[
             Part[$CellContext`orbs, 2]], Green, 
            $CellContext`OrbitLine3D[
             Part[$CellContext`orbs, 3]], 
            $CellContext`OrbitVelocityArrow3D[
             Part[$CellContext`orbs, 3]], Black, 
            $CellContext`BurnVelocityArrow3D[$CellContext`b1], 
            $CellContext`BurnVelocityArrow3D[$CellContext`b2]}, 
           PlotRange -> {{-$CellContext`s, $CellContext`s}, {-$CellContext`s, \
$CellContext`s}, {-$CellContext`s, $CellContext`s}}, ImageSize -> 
           Large]], $CellContext`OrbitPlot3D[
         PatternTest[
          Pattern[$CellContext`orbs, 
           Blank[]], Length[#] == 3& ]] := Block[{}, 
         Graphics3D[{
           Point[{0, 0, 0}], 
           Arrowheads[Small], Red, 
           $CellContext`OrbitLine3D[
            Part[$CellContext`orbs, 1]], 
           $CellContext`OrbitVelocityArrow3D[
            Part[$CellContext`orbs, 1]], Green, 
           $CellContext`OrbitLine3D[
            Part[$CellContext`orbs, 2]], 
           $CellContext`OrbitVelocityArrow3D[
            Part[$CellContext`orbs, 2]], Blue, 
           $CellContext`OrbitLine3D[
            Part[$CellContext`orbs, 3]], 
           $CellContext`OrbitVelocityArrow3D[
            Part[$CellContext`orbs, 3]]}, 
          PlotRange -> {{-4, 4}, {-4, 4}, {-4, 4}}]], $CellContext`OrbitLine3D[
         PatternTest[
          Pattern[$CellContext`o, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Orbit"], #["Orbit"] == "Nondegenerate"]& ]] := 
       Block[{$CellContext`Nurl, $CellContext`Nurh, $CellContext`Nus}, \
{$CellContext`Nurl, $CellContext`Nurh} = $CellContext`o[
           "\[Nu]Range"]; $CellContext`Nus = Max[
            Abs[($CellContext`Nurh - $CellContext`Nurl)/160], 0.02]; Line[
           Table[
            $CellContext`CartesianFromKeplerian[
             $CellContext`CoordinateFromOrbit[$CellContext`o, \
$CellContext`Nu]][
            "Position"], {$CellContext`Nu, $CellContext`Nurl, \
$CellContext`Nurh, $CellContext`Nus}]]], $CellContext`CartesianFromKeplerian[
         PatternTest[
          Pattern[$CellContext`kep, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Keplerian"]& ]] := 
       Block[{$CellContext`a = $CellContext`kep[
           "a"], $CellContext`e = $CellContext`kep[
           "e"], $CellContext`i = $CellContext`kep[
           "i"], $CellContext`Om = $CellContext`kep[
           "\[CapitalOmega]"], $CellContext`\[CurlyPi] = $CellContext`kep[
           "\[CurlyPi]"], $CellContext`w, $CellContext`v = $CellContext`kep[
           "\[Nu]"], $CellContext`IHAT, $CellContext`JHAT, $CellContext`r, \
$CellContext`X, $CellContext`Y, $CellContext`Z, $CellContext`vX, \
$CellContext`vY, $CellContext`vZ, $CellContext`\[Mu] = 
          1}, $CellContext`w = $CellContext`\[CurlyPi] - $CellContext`Om; \
$CellContext`IHAT = {
           Cos[$CellContext`Om] Cos[$CellContext`w] - Sin[$CellContext`Om] 
            Sin[$CellContext`w] Cos[$CellContext`i], 
            Sin[$CellContext`Om] Cos[$CellContext`w] + 
            Cos[$CellContext`Om] Sin[$CellContext`w] Cos[$CellContext`i], 
            Sin[$CellContext`w] 
            Sin[$CellContext`i]}; $CellContext`JHAT = {(-Cos[$CellContext`Om])
               Sin[$CellContext`w] - Sin[$CellContext`Om] Cos[$CellContext`w] 
            Cos[$CellContext`i], (-Sin[$CellContext`Om]) Sin[$CellContext`w] + 
            Cos[$CellContext`Om] Cos[$CellContext`w] Cos[$CellContext`i], 
            Cos[$CellContext`w] 
            Sin[$CellContext`i]}; $CellContext`r = $CellContext`a ((
             1 - $CellContext`e^2)/(
            1 + $CellContext`e 
             Cos[$CellContext`v])); {$CellContext`X, $CellContext`Y, \
$CellContext`Z} = $CellContext`r 
            Cos[$CellContext`v] $CellContext`IHAT + $CellContext`r 
            Sin[$CellContext`v] $CellContext`JHAT; {$CellContext`vX, \
$CellContext`vY, $CellContext`vZ} = 
          Sqrt[$CellContext`\[Mu]/($CellContext`a (1 - $CellContext`e^2))] ((-
              Sin[$CellContext`v]) $CellContext`IHAT + ($CellContext`e + 
              Cos[$CellContext`v]) $CellContext`JHAT); 
         Association[
          "Coordinate" -> "Cartesian", 
           "Position" -> {$CellContext`X, $CellContext`Y, $CellContext`Z}, 
           "Velocity" -> {$CellContext`vX, $CellContext`vY, \
$CellContext`vZ}]], $CellContext`CoordinateFromOrbit[
         PatternTest[
          Pattern[$CellContext`o, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Orbit"], #["Orbit"] == "Nondegenerate"]& ], 
         Pattern[$CellContext`\[Nu], 
          Blank[]]] := 
       Block[{$CellContext`kep}, $CellContext`kep = 
          KeyDrop[$CellContext`o, {"Orbit", "\[Nu]Range"}]; $CellContext`kep[
           "Coordinate"] = 
          "Keplerian"; $CellContext`kep[
           "\[Nu]"] = $CellContext`\[Nu]; $CellContext`kep], \
$CellContext`OrbitVelocityArrow3D[
         PatternTest[
          Pattern[$CellContext`o, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Orbit"], #["Orbit"] == "Nondegenerate"]& ]] := 
       Block[{$CellContext`cart, $CellContext`p, $CellContext`v}, \
$CellContext`cart = $CellContext`CartesianFromKeplerian[
            $CellContext`CoordinateFromOrbit[$CellContext`o, 
             0]]; $CellContext`p = $CellContext`cart[
           "Position"]; $CellContext`v = Normalize[
             $CellContext`cart["Velocity"]] Sqrt[
             Max[
              Norm[$CellContext`p], 1]]; Arrow[
           
           Line[{$CellContext`p, $CellContext`p + $CellContext`v}]]], \
$CellContext`BurnVelocityArrow3D[
         PatternTest[
          Pattern[$CellContext`b, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ]] := 
       Block[{$CellContext`p, $CellContext`dv}, $CellContext`p = \
$CellContext`b["Position"]; $CellContext`dv = $CellContext`b[
           "VelocityChange"]; $CellContext`dv = 
          Normalize[$CellContext`dv] Sqrt[
             Max[
              Norm[$CellContext`p], 1]]; If[Norm[$CellContext`dv] > 0, 
           Arrow[
            
            Line[{$CellContext`p, $CellContext`p + $CellContext`dv}]]]], \
$CellContext`RescaleBurnWithPlanet[
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`\[Mu], 
          Blank[]], 
         Pattern[$CellContext`plrad, 
          Blank[]], 
         Pattern[$CellContext`DU, 
          Blank[]]] := 
       Module[{$CellContext`ob, $CellContext`ra, $CellContext`TU, \
$CellContext`VU}, $CellContext`TU = 
          Sqrt[$CellContext`DU^3/$CellContext`\[Mu]]; $CellContext`VU = \
($CellContext`DU/$CellContext`TU) 1000; $CellContext`ob = $CellContext`b; 
         Map[($CellContext`ob[#] = $CellContext`b[#] $CellContext`DU)& , {
           "Position", "Radius"}]; 
         Map[($CellContext`ob[#] = $CellContext`b[#] $CellContext`VU)& , {
           "Speed", "Velocity", "VelocityChange", "LVLH Heading", 
            "\[CapitalDelta]V"}]; $CellContext`ob[
           "Altitude"] = $CellContext`ob[
            "Radius"] - $CellContext`plrad; $CellContext`ob], \
$CellContext`ProcessBurn[
         Pattern[$CellContext`b, 
          Blank[]]] := 
       Module[{$CellContext`ob}, $CellContext`ob = $CellContext`b; \
$CellContext`ob["Radius"] = Norm[
            $CellContext`b["Position"]]; $CellContext`ob["Speed"] = Norm[
            $CellContext`b["Velocity"]]; $CellContext`ob["\[CapitalDelta]V"] = 
          Norm[
            $CellContext`b["VelocityChange"]]; $CellContext`ob[
           "KSP Navball"] = \
$CellContext`KSPHeadingFromCartesian[$CellContext`ob][
           "KSPNavball"]; $CellContext`ob[
           "LVLH Heading"] = \
$CellContext`LVLHHeadingFromCartesian[$CellContext`ob][
           "LVLH"]; $CellContext`ob[
           "\[Nu]"] = $CellContext`KeplerianFromCartesian[$CellContext`ob][
           "\[Nu]"]; $CellContext`ob], $CellContext`KSPHeadingFromCartesian[
         PatternTest[
          Pattern[$CellContext`cart, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ]] := 
       Module[{$CellContext`p, $CellContext`dv, $CellContext`np, \
$CellContext`ndv, $CellContext`dvRad, $CellContext`tdv, $CellContext`pitch, \
$CellContext`northCelestialPole, $CellContext`eastward, \
$CellContext`northward, $CellContext`dveast, $CellContext`dvnorth, \
$CellContext`HDG}, $CellContext`p = $CellContext`cart[
           "Position"]; $CellContext`dv = $CellContext`cart[
           "VelocityChange"]; $CellContext`np = 
          Normalize[$CellContext`p]; $CellContext`ndv = 
          Normalize[$CellContext`dv]; $CellContext`dvRad = 
          Dot[$CellContext`np, $CellContext`dv]; $CellContext`tdv = 
          Norm[$CellContext`dv]; $CellContext`pitch = 
          If[$CellContext`tdv > 0, 
            ArcSin[$CellContext`dvRad/$CellContext`tdv]/Degree, 
            0]; $CellContext`northCelestialPole = {0, 0, 
           1}; $CellContext`eastward = Normalize[
            
            Cross[$CellContext`northCelestialPole, $CellContext`p]]; \
$CellContext`northward = Normalize[
            
            Cross[$CellContext`p, $CellContext`eastward]]; \
{$CellContext`dveast, $CellContext`dvnorth} = 
          Dot[{$CellContext`eastward, $CellContext`northward}, \
$CellContext`dv]; $CellContext`HDG = 
          If[Norm[{$CellContext`dveast, $CellContext`dvnorth}] > 0, 
            
            Mod[(Pi/2 - ArcTan[$CellContext`dveast, $CellContext`dvnorth])/
             Degree, 360], 0]; Return[
           Association[
           "Heading" -> "KSPNavball", 
            "KSPNavball" -> {$CellContext`HDG, $CellContext`pitch}]]; 
         Null], $CellContext`LVLHHeadingFromCartesian[
         PatternTest[
          Pattern[$CellContext`cart, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ]] := 
       Module[{$CellContext`ivNorm, $CellContext`radialNorm, \
$CellContext`orbitNormalNorm, $CellContext`vPro, $CellContext`vNormal, \
$CellContext`vRad}, $CellContext`ivNorm = Normalize[
            $CellContext`cart["Velocity"]]; $CellContext`radialNorm = 
          Normalize[
            $CellContext`cart[
            "Position"]]; $CellContext`dv = $CellContext`cart[
           "VelocityChange"]; If[
           And[Norm[$CellContext`ivNorm] > 0, Norm[
              Cross[$CellContext`radialNorm, $CellContext`ivNorm]] > 
            0], $CellContext`vPro = 
            Dot[$CellContext`ivNorm, $CellContext`dv]; $CellContext`vRad = 
            Dot[$CellContext`radialNorm, $CellContext`dv]; \
$CellContext`orbitNormalNorm = 
            Cross[$CellContext`radialNorm, $CellContext`ivNorm]; \
$CellContext`vNormal = Dot[$CellContext`orbitNormalNorm, $CellContext`dv]; 
           Null, {$CellContext`vPro, $CellContext`vNormal, $CellContext`vRad} = \
{0, 0, 0}; Null]; Return[
           Association[
           "Heading" -> "LVLH", 
            "LVLH" -> {$CellContext`vPro, $CellContext`vNormal, \
$CellContext`vRad}]]; Null], $CellContext`PrettyPrint[
         Pattern[$CellContext`bs, 
          Blank[List]], 
         Pattern[$CellContext`ot, 
          Blank[]]] := 
       Block[{$CellContext`pc, $CellContext`r, $CellContext`al, \
$CellContext`t\[CapitalDelta]V, $CellContext`\[CapitalDelta]Vs, \
$CellContext`sp, $CellContext`v, $CellContext`ksp, $CellContext`vc, \
$CellContext`lvlh, $CellContext`all, $CellContext`i, $CellContext`\[Nu]s}, \
$CellContext`pc = Map[NumberForm[
             Round[
              #["Position"], 0.001], {9, 3}, 
             ExponentFunction -> (
              Null& )]& , $CellContext`bs]; $CellContext`\[CapitalDelta]Vs = 
          Map[#["\[CapitalDelta]V"]& , $CellContext`bs]; $CellContext`t\
\[CapitalDelta]V = 
          Total[$CellContext`\[CapitalDelta]Vs]; \
$CellContext`\[CapitalDelta]Vs = Map[NumberForm[
             #["\[CapitalDelta]V"], {7, 
             1}]& , $CellContext`bs]; $CellContext`sp = Map[NumberForm[
             #["Speed"], {7, 1}]& , $CellContext`bs]; $CellContext`r = 
          Map[NumberForm[
             #["Radius"], {10, 3}, 
             ExponentFunction -> (
              Null& )]& , $CellContext`bs]; $CellContext`al = Map[NumberForm[
             #["Altitude"], {10, 3}]& , $CellContext`bs]; $CellContext`v = 
          Map[NumberForm[
             Round[
              #["Velocity"], 0.1], {6, 
             1}]& , $CellContext`bs]; $CellContext`vc = Map[NumberForm[
             Round[
              #["VelocityChange"], 0.1], {6, 
             1}]& , $CellContext`bs]; $CellContext`ksp = Map[NumberForm[
             Quantity[
              #["KSP Navball"], "Degrees"], {3, 
             1}]& , $CellContext`bs]; $CellContext`lvlh = Map[NumberForm[
             Round[
              #["LVLH Heading"], 0.1], {5, 
             1}]& , $CellContext`bs]; $CellContext`\[Nu]s = Map[NumberForm[
             Quantity[#["\[Nu]"]/Degree, "Degrees"], {3, 
             1}]& , $CellContext`bs]; $CellContext`all = Table[
            Grid[{{
               Style[
                StringJoin["Burn ", 
                 ToString[$CellContext`i]], Bold], ""}, {"\[CapitalDelta]V", 
               Quantity[
                Part[$CellContext`\[CapitalDelta]Vs, $CellContext`i], 
                "Meters"/"Seconds"]}, {"Orbital Speed", 
               Quantity[
                Part[$CellContext`sp, $CellContext`i], "Meters"/"Seconds"]}, {
              "Altitude", 
               Quantity[
                Part[$CellContext`al, $CellContext`i], "Kilometers"]}, {
              "KSP Navball", 
               Part[$CellContext`ksp, $CellContext`i]}, {"True Anomaly", 
               Part[$CellContext`\[Nu]s, $CellContext`i]}, {Null, Null}, {
              "Radius", 
               Quantity[
                Part[$CellContext`r, $CellContext`i], "Kilometers"]}, {
              "Cartesian XYZ", 
               StringJoin[
                ToString[
                 Part[$CellContext`pc, $CellContext`i]], " km"]}, {
              "LVLH Heading", 
               StringJoin[
                ToString[
                 Part[$CellContext`lvlh, $CellContext`i]], " m/s"]}, {
              "Cart. Vel.", 
               StringJoin[
                ToString[
                 Part[$CellContext`v, $CellContext`i]], " m/s"]}, {
              "Cart. \[CapitalDelta]V", 
               StringJoin[
                ToString[
                 Part[$CellContext`vc, $CellContext`i]], " m/s"]}, {
              Null, Null}}, Alignment -> Left], {$CellContext`i, 1, 
             Length[$CellContext`bs]}]; AppendTo[$CellContext`all, 
           Grid[{{
              Style["Transfer Orbit", Bold], ""}, {"a", 
              StringJoin[
               ToString[
                NumberForm[
                 $CellContext`ot["a"], {10, 3}]], " km"]}, {"e", 
              NumberForm[
               $CellContext`ot["e"], {5, 4}]}, {"i", 
              NumberForm[
               Round[
                Quantity[$CellContext`ot["i"]/Degree, "Degrees"], 0.01], {3, 
               1}]}, {"\[CapitalOmega]", 
              NumberForm[
               Round[
                
                Quantity[$CellContext`ot["\[CapitalOmega]"]/Degree, 
                 "Degrees"], 0.01], {3, 1}]}, {"\[Omega]", 
              NumberForm[
               Round[
                Quantity[$CellContext`ot["\[Omega]"]/Degree, "Degrees"], 
                0.01], {3, 1}]}, {"Long. of Peri.", 
              NumberForm[
               Round[
                Quantity[$CellContext`ot["\[CurlyPi]"]/Degree, "Degrees"], 
                0.01], {3, 1}]}, {"Periapsis Radius", 
              StringJoin[
               ToString[
                NumberForm[
                 $CellContext`ot["Periapsis Radius"], {10, 3}]], " km"]}, {
             "Periapsis Altitude", 
              StringJoin[
               ToString[
                NumberForm[
                 $CellContext`ot["Periapsis Altitude"], {10, 3}]], " km"]}}, 
            Alignment -> Left]]; PrependTo[$CellContext`all, 
           Grid[{{
              Style["Total \[CapitalDelta]V", 12, Bold], ""}, {
             "\[CapitalDelta]V", 
              StringJoin[
               ToString[
                NumberForm[$CellContext`t\[CapitalDelta]V, {6, 1}]], 
               " m/s"]}, {Null, Null}}, Alignment -> Left]]; Grid[
           Transpose[{$CellContext`all}], Alignment -> Left]], $CellContext`f[{
          Pattern[$CellContext`a1, 
           Blank[]], 
          Pattern[$CellContext`e1, 
           Blank[]], 
          Pattern[$CellContext`i1, 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega]1, 
           Blank[]], 
          Pattern[$CellContext`\[Omega]1, 
           Blank[]], 
          Pattern[$CellContext`\[Nu]s1s, 
           Blank[]], 
          Pattern[$CellContext`\[Nu]e1s, 
           Blank[]]}, {
          Pattern[$CellContext`a2, 
           Blank[]], 
          Pattern[$CellContext`e2, 
           Blank[]], 
          Pattern[$CellContext`i2, 
           Blank[]], 
          Pattern[$CellContext`\[CapitalOmega]2, 
           Blank[]], 
          Pattern[$CellContext`\[Omega]2, 
           Blank[]], 
          Pattern[$CellContext`\[Nu]s2s, 
           Blank[]], 
          Pattern[$CellContext`\[Nu]e2s, 
           Blank[]]}, 
         Pattern[$CellContext`pl, 
          Blank[]]] := 
       Block[{$CellContext`\[Nu]s1, $CellContext`\[Nu]e1, \
$CellContext`\[Nu]s2, $CellContext`\[Nu]e2, $CellContext`planet, \
$CellContext`plRadius, $CellContext`pl\[Mu], $CellContext`plDU, \
$CellContext`plTU, $CellContext`plVU}, $CellContext`planet = \
$CellContext`CelestialBodyData[$CellContext`pl]; $CellContext`plDU = \
$CellContext`planet["Radius"] + $CellContext`planet[
            "Atm height"]; {$CellContext`\[Nu]s1, $CellContext`\[Nu]e1} = 
          Sort[{$CellContext`\[Nu]s1s, $CellContext`\[Nu]e1s}]; \
{$CellContext`\[Nu]s2, $CellContext`\[Nu]e2} = 
          Sort[{$CellContext`\[Nu]s2s, $CellContext`\[Nu]e2s}]; \
$CellContext`BestTransferTwoOrbits[
           Association[
           "Orbit" -> "Nondegenerate", 
            "a" -> $CellContext`a1/$CellContext`plDU, "e" -> $CellContext`e1, 
            "i" -> $CellContext`i1 Degree, 
            "\[CapitalOmega]" -> $CellContext`\[CapitalOmega]1 Degree, 
            "\[CurlyPi]" -> $CellContext`\[Omega]1 Degree, 
            "\[Nu]Range" -> {$CellContext`\[Nu]s1s 
              Degree, $CellContext`\[Nu]e1s Degree}], 
           Association[
           "Orbit" -> "Nondegenerate", 
            "a" -> $CellContext`a2/$CellContext`plDU, "e" -> $CellContext`e2, 
            "i" -> $CellContext`i2 Degree, 
            "\[CapitalOmega]" -> $CellContext`\[CapitalOmega]2 Degree, 
            "\[CurlyPi]" -> $CellContext`\[Omega]2 Degree, 
            "\[Nu]Range" -> {$CellContext`\[Nu]s2s 
              Degree, $CellContext`\[Nu]e2s 
              Degree}]]], $CellContext`BestTransferTwoOrbits[
         Pattern[$CellContext`oo1, 
          Blank[]], 
         Pattern[$CellContext`oo2, 
          Blank[]]] := 
       Block[{$CellContext`o1, $CellContext`o2}, {$CellContext`o1, \
$CellContext`o2} = 
          Map[$CellContext`restrictOrbit[#]& , {$CellContext`oo1, \
$CellContext`oo2}]; If[
           $CellContext`analyticTransferPossible[$CellContext`o1, \
$CellContext`o2], 
           $CellContext`tryAnalyticTransfer[$CellContext`o1, $CellContext`o2], 
           $CellContext`nonanalyticTransfer[$CellContext`o1, \
$CellContext`o2]]], $CellContext`analyticTransferPossible[
         Pattern[$CellContext`o1, 
          Blank[]], 
         Pattern[$CellContext`o2, 
          Blank[]]] := Block[{}, 
         Or[
          And[
           $CellContext`orbsAreCoplanar[$CellContext`o1, $CellContext`o2], 
           $CellContext`orbsAreCircular[$CellContext`o1, $CellContext`o2]], 
          $CellContext`orbsAreIdentical[$CellContext`o1, $CellContext`o2]]], \
$CellContext`orbsAreCoplanar[
         Pattern[$CellContext`o1$, 
          Blank[]], 
         Pattern[$CellContext`o2$, 
          Blank[]]] := 
       Block[{$CellContext`i1$$, $CellContext`O1, $CellContext`i2$$, \
$CellContext`O2}, $CellContext`i1$$ = $CellContext`o1$[
           "i"]; $CellContext`i2$$ = $CellContext`o2$[
           "i"]; $CellContext`O1 = $CellContext`o1$[
           "\[CapitalOmega]"]; $CellContext`O2 = $CellContext`o2$[
           "\[CapitalOmega]"]; And[$CellContext`i1$$ == $CellContext`i2$$, 
           Or[
            
            Or[$CellContext`i1$$ == 0, $CellContext`i1$$ == 
             Pi], $CellContext`O1 == $CellContext`O2]]], \
$CellContext`orbsAreCircular[
         Pattern[$CellContext`o1, 
          Blank[]], 
         Pattern[$CellContext`o2, 
          Blank[]]] := Block[{}, 
         And[$CellContext`o1["e"] == 0, $CellContext`o2["e"] == 
          0]], $CellContext`orbsAreIdentical[
         Pattern[$CellContext`o1$, 
          Blank[]], 
         Pattern[$CellContext`o2$, 
          Blank[]]] := 
       Block[{$CellContext`a1$$, $CellContext`e1$$, $CellContext`i1$$, \
$CellContext`O1, $CellContext`w1, $CellContext`a2$$, $CellContext`e2$$, \
$CellContext`i2$$, $CellContext`O2, $CellContext`w2}, $CellContext`a1$$ = \
$CellContext`o1$["a"]; $CellContext`a2$$ = $CellContext`o2$[
           "a"]; $CellContext`e1$$ = $CellContext`o1$[
           "e"]; $CellContext`e2$$ = $CellContext`o2$[
           "e"]; $CellContext`i1$$ = $CellContext`o1$[
           "i"]; $CellContext`i2$$ = $CellContext`o2$[
           "i"]; $CellContext`O1 = $CellContext`o1$[
           "\[CapitalOmega]"]; $CellContext`O2 = $CellContext`o2$[
           "\[CapitalOmega]"]; $CellContext`w1 = $CellContext`o1$[
           "\[Omega]"]; $CellContext`w2 = $CellContext`o2$["\[Omega]"]; 
         And[$CellContext`a1$$ == $CellContext`a2$$, 
           
           Or[$CellContext`e1$$ == 
            0, $CellContext`w1 == $CellContext`w2], $CellContext`e1$$ == \
$CellContext`e2$$, 
           Or[
            
            Or[$CellContext`i1$$ == 0, $CellContext`i1$$ == 
             Pi], $CellContext`O1 == $CellContext`O2], $CellContext`i1$$ == \
$CellContext`i2$$]], $CellContext`tryAnalyticTransfer[
         Pattern[$CellContext`o1, 
          Blank[]], 
         Pattern[$CellContext`o2, 
          Blank[]]] := 
       Block[{$CellContext`w1, $CellContext`w2, $CellContext`nr1, \
$CellContext`nr2, $CellContext`nInt, $CellContext`minInt, \
$CellContext`maxInt, $CellContext`nu}, 
         Which[
          $CellContext`orbsAreIdentical[$CellContext`o1, $CellContext`o2], \
$CellContext`nr1 = Interval[
             $CellContext`o1["\[Nu]Range"]]; $CellContext`nr2 = Interval[
             $CellContext`o2["\[Nu]Range"]]; $CellContext`nInt = 
           IntervalIntersection[$CellContext`nr1, $CellContext`nr2]; \
$CellContext`minInt = Min[$CellContext`nInt]; $CellContext`maxInt = 
           Max[$CellContext`nInt]; 
          If[$CellContext`minInt < 2 Pi, $CellContext`nu = If[
               IntervalMemberQ[$CellContext`nInt, 0], 0, 
               
               RandomReal[{$CellContext`minInt, $CellContext`maxInt}]]; \
{$CellContext`nu, $CellContext`nu, 
              $CellContext`BestTransferTwoPoints[
               $CellContext`CartesianFromKeplerian[
                $CellContext`CoordinateFromOrbit[$CellContext`o1, \
$CellContext`nu]], 
               $CellContext`CartesianFromKeplerian[
                $CellContext`CoordinateFromOrbit[$CellContext`o2, \
$CellContext`nu]]]}, 
            $CellContext`nonanalyticTransfer[$CellContext`o1, \
$CellContext`o2]], 
          And[
           $CellContext`orbsAreCircular[$CellContext`o1, $CellContext`o2], 
           $CellContext`orbsAreCoplanar[$CellContext`o1, $CellContext`o2]], \
{$CellContext`w1, $CellContext`w2} = Map[$CellContext`ModPiRange[
              #[
              "\[Omega]"]]& , {$CellContext`o1, $CellContext`o2}]; \
{-$CellContext`w1, -$CellContext`w2 + Pi, 
            $CellContext`BestTransferTwoPoints[
             $CellContext`CartesianFromKeplerian[
              $CellContext`CoordinateFromOrbit[$CellContext`o1, \
-$CellContext`w1]], 
             $CellContext`CartesianFromKeplerian[
              $CellContext`CoordinateFromOrbit[$CellContext`o2, \
-$CellContext`w2 + Pi]]]}, True, 
          $CellContext`nonanalyticTransfer[$CellContext`o1, \
$CellContext`o2]]], $CellContext`BestTransferTwoPoints[
         PatternTest[
          Pattern[$CellContext`cart1, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ], 
         PatternTest[
          Pattern[$CellContext`cart2, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ]] := 
       Module[{$CellContext`p1, $CellContext`p2, $CellContext`bt, \
$CellContext`tDV, $CellContext`b1, $CellContext`b2}, {$CellContext`p1, \
$CellContext`p2} = 
          Map[#["Position"]& , {$CellContext`cart1, $CellContext`cart2}]; \
$CellContext`bt = If[Chop[
              Norm[
               Cross[$CellContext`p1, $CellContext`p2]]] == 0, 
            If[Dot[$CellContext`p1, $CellContext`p2] > 0, 
             If[Norm[$CellContext`p1] == Norm[$CellContext`p2], 
              $CellContext`sameRadSameAng[$CellContext`cart1, \
$CellContext`cart2], 
              $CellContext`geneRadSameAng[$CellContext`cart1, \
$CellContext`cart2]], 
             $CellContext`oppoAng[$CellContext`cart1, $CellContext`cart2]], 
            $CellContext`geneAng[$CellContext`cart1, $CellContext`cart2]]; \
$CellContext`tDV = $CellContext`bt[
           "Total \[CapitalDelta]V"]; $CellContext`b1 = $CellContext`bt[
           "Burn 1"]; $CellContext`b2 = $CellContext`bt["Burn 2"]; 
         Association[
          "Total \[CapitalDelta]V" -> $CellContext`tDV, 
           "Burn 1" -> $CellContext`b1, 
           "Burn 2" -> $CellContext`b2]], $CellContext`sameRadSameAng[
         Pattern[$CellContext`cart1, 
          Blank[]], 
         Pattern[$CellContext`cart2, 
          Blank[]]] := 
       Module[{$CellContext`vc, $CellContext`tdv}, $CellContext`vc = \
$CellContext`cart2["Velocity"] - $CellContext`cart1[
           "Velocity"]; $CellContext`tdv = Norm[$CellContext`vc]; 
         Association[
          "Total \[CapitalDelta]V" -> $CellContext`tdv, "Burn 1" -> 
           Association[
            "Coordinate" -> "Cartesian", 
             "Position" -> $CellContext`cart1["Position"], 
             "Velocity" -> $CellContext`cart1["Velocity"], 
             "VelocityChange" -> $CellContext`vc], "Burn 2" -> 
           Association[
            "Coordinate" -> "Cartesian", 
             "Position" -> $CellContext`cart2["Position"], 
             "Velocity" -> $CellContext`cart2["Velocity"], 
             "VelocityChange" -> {0., 0., 0.}]]], $CellContext`geneRadSameAng[
        
         Pattern[$CellContext`cart1, 
          Blank[]], 
         Pattern[$CellContext`cart2, 
          Blank[]]] := 
       Module[{$CellContext`M, $CellContext`cpl1, $CellContext`cpl2, \
$CellContext`pol1, $CellContext`pol2, $CellContext`r1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`vr2, \
$CellContext`vth2, $CellContext`vz2, $CellContext`fDV, $CellContext`minvr, \
$CellContext`maxvr, $CellContext`vrstep, $CellContext`b, $CellContext`tDV, \
$CellContext`cv1, $CellContext`cv2, $CellContext`burn1, $CellContext`burn2, \
$CellContext`c1, $CellContext`c2}, {$CellContext`M, $CellContext`cpl1, \
$CellContext`cpl2} = \
$CellContext`CartesianPlanarsFromCartesians[$CellContext`cart1, \
$CellContext`cart2]; {$CellContext`pol1, $CellContext`pol2} = 
          Map[$CellContext`PolarFromCartesianPlanar[#]& , {$CellContext`cpl1, \
$CellContext`cpl2}]; {$CellContext`r1, $CellContext`r2} = Map[Part[
             #["Position"], 
             1]& , {$CellContext`pol1, $CellContext`pol2}]; \
{$CellContext`vr1, $CellContext`vth1, $CellContext`vz1} = $CellContext`pol1[
           "Velocity"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`pol2["Velocity"]; $CellContext`vrstep = 
          0.0001; If[$CellContext`r1 < $CellContext`r2, $CellContext`fDV = 
            Sqrt[$CellContext`vth1^2 + $CellContext`vz1^2 + ($CellContext`vr1 - \
#)^2] + Sqrt[$CellContext`vth2^2 + $CellContext`vz2^2 + (
                 Abs[$CellContext`vr2] - 
                 Sqrt[#^2 - 
                  2 (1/$CellContext`r1 - 
                   1/$CellContext`r2)])^2]& ; $CellContext`minvr = 
            Sqrt[2 (1/$CellContext`r1 - 
               1/$CellContext`r2)]; $CellContext`maxvr = 
            2. Max[$CellContext`vr1, 
               
               Sqrt[$CellContext`vr2^2 + 
                2 (1/$CellContext`r1 - 
                  1/$CellContext`r2)]]; $CellContext`b = \
$CellContext`MinimizeUnimodalFunction[$CellContext`fDV, $CellContext`minvr, \
$CellContext`maxvr, $CellContext`vrstep]; $CellContext`cv2 = \
{$CellContext`vr2 + 
              If[Sign[$CellContext`vr2] == 1, -1, 1] 
               Sqrt[Part[$CellContext`b, 1]^2 - 
                 2 (1/$CellContext`r1 - 
                  1/$CellContext`r2)], $CellContext`vth2, $CellContext`vz2}; 
           Null, $CellContext`fDV = 
            Sqrt[$CellContext`vth1^2 + $CellContext`vz1^2 + ($CellContext`vr1 - \
#)^2] + Sqrt[$CellContext`vth2^2 + $CellContext`vz2^2 + ($CellContext`vr2 + 
                 Sqrt[#^2 + 
                   2 (1/$CellContext`r2 - 
                    1/$CellContext`r1)])^2]& ; $CellContext`maxvr = 
            Abs[$CellContext`vr1] + 
             Sqrt[2 (1/$CellContext`r2 - 1/$CellContext`r1)] + 
             Abs[$CellContext`vr2]; $CellContext`b = 
            If[$CellContext`vr1 > 0, 
              $CellContext`MinimizeUnimodalFunction[$CellContext`fDV, 
               0, $CellContext`maxvr, $CellContext`vrstep], 
              $CellContext`MinimizeUnimodalFunction[$CellContext`fDV, \
-$CellContext`maxvr, 
               0, $CellContext`vrstep]]; $CellContext`cv2 = {$CellContext`vr2 - 
              Sqrt[Part[$CellContext`b, 1]^2 + 
               2 (1/$CellContext`r2 - 
                 1/$CellContext`r1)], $CellContext`vth2, $CellContext`vz2}; 
           Null]; $CellContext`cv1 = {
           Part[$CellContext`b, 
              1] - $CellContext`vr1, -$CellContext`vth1, -$CellContext`vz1}; \
$CellContext`tDV = 
          Part[$CellContext`b, 2]; {$CellContext`burn1, $CellContext`burn2} = 
          ConstantArray[
            Association["Coordinate" -> "Polar"], {2}]; $CellContext`burn1[
           "Position"] = $CellContext`pol1["Position"]; $CellContext`burn2[
           "Position"] = $CellContext`pol2["Position"]; $CellContext`burn1[
           "Velocity"] = $CellContext`pol1["Velocity"]; $CellContext`burn2[
           "Velocity"] = $CellContext`pol2[
            "Velocity"] - $CellContext`cv2; $CellContext`burn1[
           "VelocityChange"] = $CellContext`cv1; $CellContext`burn2[
           "VelocityChange"] = $CellContext`cv2; {$CellContext`cpl1, \
$CellContext`cpl2} = 
          Map[$CellContext`CartesianPlanarFromPolar[#]& , \
{$CellContext`burn1, $CellContext`burn2}]; {$CellContext`c1, $CellContext`c2} = 
          Map[$CellContext`CartesianFromCartesianPlanar[
             
             Inverse[$CellContext`M], #]& , {$CellContext`cpl1, \
$CellContext`cpl2}]; Return[
           Association[
           "Total \[CapitalDelta]V" -> $CellContext`tDV, 
            "Burn 1" -> $CellContext`c1, "Burn 2" -> $CellContext`c2]]; 
         Null], $CellContext`CartesianPlanarsFromCartesians[
         PatternTest[
          Pattern[$CellContext`cart1, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ], 
         PatternTest[
          Pattern[$CellContext`cart2, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Cartesian"]& ]] := 
       Module[{$CellContext`M, $CellContext`p1, $CellContext`p2, \
$CellContext`v1, $CellContext`v2, $CellContext`p1Crossp2, \
$CellContext`orbNorm, $CellContext`prograde}, {$CellContext`p1, \
$CellContext`p2} = 
          Map[#["Position"]& , {$CellContext`cart1, $CellContext`cart2}]; \
{$CellContext`v1, $CellContext`v2} = 
          Map[#["Velocity"]& , {$CellContext`cart1, $CellContext`cart2}]; \
$CellContext`p1Crossp2 = 
          Cross[$CellContext`p1, $CellContext`p2]; $CellContext`M = If[Chop[
              Norm[$CellContext`p1Crossp2]] != 0, 
            
            Orthogonalize[{$CellContext`p1, $CellContext`p2, \
$CellContext`p1Crossp2}], $CellContext`orbNorm = 
             Cross[$CellContext`p1, $CellContext`v1]; $CellContext`prograde = 
             Cross[$CellContext`orbNorm, $CellContext`p1]; 
            Orthogonalize[{$CellContext`p1, $CellContext`prograde, \
$CellContext`orbNorm}]]; {$CellContext`cartpl1, $CellContext`cartpl2} = 
          ConstantArray[
            Association["Coordinate" -> "CartesianPlanar"], {
            2}]; $CellContext`cartpl1["Position"] = Part[
            Dot[$CellContext`M, $CellContext`p1], 
            Span[1, 2]]; $CellContext`cartpl2["Position"] = Part[
            Dot[$CellContext`M, $CellContext`p2], 
            Span[1, 2]]; $CellContext`cartpl1["Velocity"] = 
          Dot[$CellContext`M, $CellContext`v1]; $CellContext`cartpl2[
           "Velocity"] = Dot[$CellContext`M, $CellContext`v2]; 
         Return[{$CellContext`M, $CellContext`cartpl1, $CellContext`cartpl2}]; 
         Null], $CellContext`PolarFromCartesianPlanar[
         PatternTest[
          Pattern[$CellContext`cartpl, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == 
           "CartesianPlanar"]& ]] := 
       Module[{$CellContext`p, $CellContext`vel, $CellContext`x, \
$CellContext`y, $CellContext`r, $CellContext`th, $CellContext`vr, \
$CellContext`vth, $CellContext`vz}, $CellContext`p = Append[
            $CellContext`cartpl["Position"], 
            0]; $CellContext`vel = $CellContext`cartpl[
           "Velocity"]; $CellContext`r = 
          Sqrt[Part[$CellContext`p, 1]^2 + 
            Part[$CellContext`p, 2]^2]; $CellContext`th = Mod[
            ArcTan[
             Part[$CellContext`p, 1], 
             Part[$CellContext`p, 2]], 2. Pi]; $CellContext`vr = 
          Dot[$CellContext`vel, 
            Normalize[$CellContext`p]]; $CellContext`vth = Dot[
            Normalize[
             
             Cross[{0, 0, 
              1}, $CellContext`p]], $CellContext`vel]; $CellContext`vz = 
          Part[$CellContext`vel, 3]; Return[
           Association[
           "Coordinate" -> "Polar", 
            "Position" -> {$CellContext`r, $CellContext`th}, 
            "Velocity" -> {$CellContext`vr, $CellContext`vth, \
$CellContext`vz}]]; Null], $CellContext`MinimizeUnimodalFunction[
         Pattern[$CellContext`func, 
          Blank[]], 
         Pattern[$CellContext`ilow, 
          Blank[]], 
         Pattern[$CellContext`ihigh, 
          Blank[]], 
         Pattern[$CellContext`tol, 
          
          Blank[]]] := $CellContext`GoldenRatioSearch[$CellContext`func, \
$CellContext`ilow, $CellContext`ihigh, $CellContext`tol], \
$CellContext`GoldenRatioSearch[
         Pattern[$CellContext`func, 
          Blank[]], 
         Pattern[$CellContext`ilow, 
          Blank[]], 
         Pattern[$CellContext`ihigh, 
          Blank[]], 
         Pattern[$CellContext`tol, 
          Blank[]]] := 
       Block[{$CellContext`low = N[$CellContext`ilow], $CellContext`high = 
          N[$CellContext`ihigh], $CellContext`c, $CellContext`d, \
$CellContext`h, $CellContext`r1, $CellContext`r2, $CellContext`Ya, \
$CellContext`Yb, $CellContext`Yc, $CellContext`Yd, $CellContext`p, \
$CellContext`Yp}, $CellContext`r1 = (Sqrt[5.] - 1.)/
           2.; $CellContext`r2 = $CellContext`r1^2; $CellContext`h = \
$CellContext`high - $CellContext`low; $CellContext`Ya = \
$CellContext`func[$CellContext`high]; $CellContext`Yb = \
$CellContext`func[$CellContext`low]; $CellContext`c = $CellContext`low + \
$CellContext`r2 $CellContext`h; $CellContext`d = $CellContext`low + \
$CellContext`r1 $CellContext`h; $CellContext`Yc = \
$CellContext`func[$CellContext`c]; $CellContext`Yd = \
$CellContext`func[$CellContext`d]; 
         While[$CellContext`h > $CellContext`tol, 
           If[$CellContext`Yc < $CellContext`Yd, $CellContext`high = \
$CellContext`d; $CellContext`Yb = $CellContext`Yd; $CellContext`d = \
$CellContext`c; $CellContext`Yd = $CellContext`Yc; $CellContext`h = \
$CellContext`high - $CellContext`low; $CellContext`c = $CellContext`low + \
$CellContext`r2 $CellContext`h; $CellContext`Yc = \
$CellContext`func[$CellContext`c]; 
             Null, $CellContext`low = $CellContext`c; $CellContext`Ya = \
$CellContext`Yc; $CellContext`c = $CellContext`d; $CellContext`Yc = \
$CellContext`Yd; $CellContext`h = $CellContext`high - $CellContext`low; \
$CellContext`d = $CellContext`low + $CellContext`r1 $CellContext`h; \
$CellContext`Yd = $CellContext`func[$CellContext`d]; Null]; 
           Null]; $CellContext`p = $CellContext`low; $CellContext`Yp = \
$CellContext`Ya; 
         If[$CellContext`Yb < $CellContext`Ya, $CellContext`p = \
$CellContext`high; $CellContext`Yp = $CellContext`Yb]; {$CellContext`p, \
$CellContext`Yp}], $CellContext`CartesianPlanarFromPolar[
         PatternTest[
          Pattern[$CellContext`polar, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Polar"]& ]] := 
       Module[{$CellContext`cartpl, $CellContext`r, $CellContext`th, \
$CellContext`transform, $CellContext`vr, $CellContext`vth, $CellContext`vz, \
$CellContext`vx, $CellContext`vy}, $CellContext`cartpl = 
          Association[
           "Coordinate" -> 
            "CartesianPlanar"]; {$CellContext`r, $CellContext`th} = \
$CellContext`polar["Position"]; $CellContext`transform = Dot[{{
              Cos[$CellContext`th], -Sin[$CellContext`th]}, {
              Sin[$CellContext`th], 
              Cos[$CellContext`th]}}, {
             Part[#, 1], 
             Part[#, 2]}]& ; $CellContext`cartpl[
           "Position"] = {$CellContext`r Cos[$CellContext`th], $CellContext`r 
            Sin[$CellContext`th]}; Map[If[
            
            KeyExistsQ[$CellContext`polar, #], {$CellContext`vr, \
$CellContext`vth, $CellContext`vz} = $CellContext`polar[#]; {$CellContext`vx, \
$CellContext`vy} = $CellContext`transform[{$CellContext`vr, \
$CellContext`vth}]; $CellContext`cartpl[#] = {$CellContext`vx, \
$CellContext`vy, $CellContext`vz}; Null]& , {"Velocity", "VelocityChange"}]; 
         Return[$CellContext`cartpl]; 
         Null], $CellContext`CartesianFromCartesianPlanar[
         PatternTest[
          Pattern[$CellContext`M, 
           Blank[]], MatrixQ], 
         PatternTest[
          Pattern[$CellContext`cartpl, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == 
           "CartesianPlanar"]& ]] := 
       Module[{$CellContext`cart}, $CellContext`cart = 
          Association["Coordinate" -> "Cartesian"]; $CellContext`cart[
           "Position"] = Dot[$CellContext`M, 
            Append[
             $CellContext`cartpl["Position"], 0]]; Map[If[
            KeyExistsQ[$CellContext`cartpl, #], $CellContext`cart[#] = 
            Dot[$CellContext`M, 
              $CellContext`cartpl[#]]]& , {"Velocity", "VelocityChange"}]; 
         Return[$CellContext`cart]; Null], $CellContext`oppoAng[
         Pattern[$CellContext`cart1, 
          Blank[]], 
         Pattern[$CellContext`cart2, 
          Blank[]]] := 
       Module[{$CellContext`p1, $CellContext`p2, $CellContext`v1, \
$CellContext`v2, $CellContext`h, $CellContext`M, $CellContext`cartpl1, \
$CellContext`cartpl2, $CellContext`pol1, $CellContext`pol2, $CellContext`r, \
$CellContext`tdv, $CellContext`burn1, $CellContext`burn2, $CellContext`c1, \
$CellContext`c2, $CellContext`prog, $CellContext`pole}, {$CellContext`p1, \
$CellContext`p2} = 
          Map[#["Position"]& , {$CellContext`cart1, $CellContext`cart2}]; \
{$CellContext`v1, $CellContext`v2} = 
          Map[#["Velocity"]& , {$CellContext`cart1, $CellContext`cart2}]; \
$CellContext`h = 
          Cross[$CellContext`p1, $CellContext`v1] + 
           Cross[$CellContext`p2, $CellContext`v2]; If[Chop[
             Norm[$CellContext`h]] == 0, $CellContext`h = If[
              Or[Chop[
                 Normalize[$CellContext`p1]] == {0, 0, 1}, Chop[
                 Normalize[$CellContext`p1]] == {0, 0, -1}], 
              Cross[$CellContext`p1, $CellContext`v1], {0, 0, 1}]; 
           Null]; $CellContext`pole = 
          Normalize[$CellContext`h]; $CellContext`prog = 
          Cross[$CellContext`pole, $CellContext`p1]; $CellContext`M = 
          Orthogonalize[{$CellContext`p1, $CellContext`prog, \
$CellContext`pole}]; {$CellContext`p1, $CellContext`p2, $CellContext`v1, \
$CellContext`v2} = 
          Map[Dot[$CellContext`M, #]& , {$CellContext`p1, $CellContext`p2, \
$CellContext`v1, $CellContext`v2}]; {$CellContext`cartpl1, \
$CellContext`cartpl2} = ConstantArray[
            Association["Coordinate" -> "CartesianPlanar"], {
            2}]; $CellContext`cartpl1["Position"] = Part[$CellContext`p1, 
            Span[1, 2]]; $CellContext`cartpl2["Position"] = 
          Part[$CellContext`p2, 
            Span[1, 2]]; $CellContext`cartpl1[
           "Velocity"] = $CellContext`v1; $CellContext`cartpl2[
           "Velocity"] = $CellContext`v2; {$CellContext`pol1, \
$CellContext`pol2} = 
          Map[$CellContext`PolarFromCartesianPlanar[#]& , \
{$CellContext`cartpl1, $CellContext`cartpl2}]; $CellContext`r = If[Part[
              $CellContext`pol1["Position"], 1] == Part[
              $CellContext`pol2["Position"], 1], 
            $CellContext`geneAngSameRad[$CellContext`pol1, $CellContext`pol2], 
            $CellContext`geneAngGeneRad[$CellContext`pol1, \
$CellContext`pol2]]; $CellContext`tdv = $CellContext`r[
           "Total \[CapitalDelta]V"]; $CellContext`burn1 = $CellContext`r[
           "Burn 1"]; $CellContext`burn2 = $CellContext`r[
           "Burn 2"]; {$CellContext`cartpl1, $CellContext`cartpl2} = 
          Map[$CellContext`CartesianPlanarFromPolar[#]& , \
{$CellContext`burn1, $CellContext`burn2}]; {$CellContext`c1, $CellContext`c2} = 
          Map[$CellContext`CartesianFromCartesianPlanar[
             
             Inverse[$CellContext`M], #]& , {$CellContext`cartpl1, \
$CellContext`cartpl2}]; Return[
           Association[
           "Total \[CapitalDelta]V" -> $CellContext`tdv, 
            "Burn 1" -> $CellContext`c1, "Burn 2" -> $CellContext`c2]]; 
         Null], $CellContext`geneAngSameRad[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]]] := 
       Module[{$CellContext`r1, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2, $CellContext`vc1, \
$CellContext`vc2, $CellContext`os, $CellContext`maxoe, $CellContext`wb, \
$CellContext`wf, $CellContext`tDV, $CellContext`d1, $CellContext`d2, \
$CellContext`maxep, $CellContext`cases, $CellContext`etol, \
$CellContext`DVTable, $CellContext`lDVi, $CellContext`bestw, \
$CellContext`bestsh, $CellContext`beste}, {$CellContext`r1, $CellContext`th1} = {
            Part[
             $CellContext`pol1["Position"], 1], 
            0}; {$CellContext`vr1, $CellContext`vth1, $CellContext`vz1} = \
$CellContext`pol1[
           "Velocity"]; {$CellContext`r2, $CellContext`th2} = \
$CellContext`pol2[
           "Position"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`pol2["Velocity"]; 
         If[Abs[$CellContext`th2 - Pi] < 
           10 $MachineEpsilon, $CellContext`th2 == Pi; 
           Null]; $CellContext`wb = \
$CellContext`angleBetweenTwoAroundCircle[$CellContext`th1, $CellContext`th2]; \
$CellContext`wf = 
          Mod[$CellContext`wb + Pi, 2 Pi]; {$CellContext`d1, $CellContext`d2} = 
          If[$CellContext`orderTwoAnglesAroundCircle[$CellContext`th1, \
$CellContext`th2] == 1, {1, -1}, {-1, 1}]; $CellContext`os = 
          Map[$CellContext`PlanarKeplerianFromPolar[#]& , {$CellContext`pol1, \
$CellContext`pol2}]; $CellContext`maxoe = Max[
            Map[#["e"]& , $CellContext`os]]; $CellContext`cases = 
          If[$CellContext`th2 == Pi, {{3 (Pi/2), -1, 
              Max[$CellContext`maxoe 2, 1]}, {3 (Pi/2), 1, 1}, {Pi/2, 1, 
              Max[$CellContext`maxoe 2, 1]}, {
             Pi/2, -1, 1}}, {{$CellContext`wb, $CellContext`d1, 
              1}, {$CellContext`wb, $CellContext`d2, 
              Max[$CellContext`maxoe 2, 
               1]}, {$CellContext`wf, $CellContext`d1, ((-1)/
               Cos[$CellContext`th1 - $CellContext`wf]) 
              0.999}, {$CellContext`wf, $CellContext`d2, 
              1}}]; $CellContext`etol = 0.0001; $CellContext`DVTable = Table[
            $CellContext`MinimizeUnimodalFunction[$CellContext`\[CapitalDelta]\
V[$CellContext`pol1, $CellContext`pol2, 
              Part[$CellContext`cases, $CellContext`i, 1], 
              Part[$CellContext`cases, $CellContext`i, 2], #]& , 0, 
             
             Part[$CellContext`cases, $CellContext`i, 
              3], $CellContext`etol], {$CellContext`i, 4}]; $CellContext`lDVi = 
          Part[
            Ordering[
             Part[
              Transpose[$CellContext`DVTable], 2]], 1]; $CellContext`bestw = 
          Part[$CellContext`cases, $CellContext`lDVi, 1]; $CellContext`bestsh = 
          Part[$CellContext`cases, $CellContext`lDVi, 2]; $CellContext`beste = 
          Part[$CellContext`DVTable, $CellContext`lDVi, 1]; $CellContext`tDV = 
          Part[$CellContext`DVTable, $CellContext`lDVi, 
            2]; {$CellContext`vc1, $CellContext`vc2} = $CellContext`\
\[CapitalDelta]VVectors[$CellContext`pol1, $CellContext`pol2, \
$CellContext`bestw, $CellContext`bestsh, $CellContext`beste]; 
         Association[
          "Total \[CapitalDelta]V" -> $CellContext`tDV, "Burn 1" -> 
           Association[
            "Coordinate" -> "Polar", 
             "Position" -> $CellContext`pol1["Position"], 
             "Velocity" -> $CellContext`pol1["Velocity"], 
             "VelocityChange" -> $CellContext`vc1], "Burn 2" -> 
           Association[
            "Coordinate" -> "Polar", 
             "Position" -> $CellContext`pol2["Position"], 
             "Velocity" -> $CellContext`pol2["Velocity"] - $CellContext`vc2, 
             "VelocityChange" -> $CellContext`vc2]]], \
$CellContext`angleBetweenTwoAroundCircle[
         Pattern[$CellContext`th1, 
          Blank[]], 
         Pattern[$CellContext`th2, 
          Blank[]]] := 
       Block[{$CellContext`mth1, $CellContext`mth2, $CellContext`mths, \
$CellContext`lead, $CellContext`trail, $CellContext`th}, $CellContext`mths = 
          Mod[{$CellContext`th1, $CellContext`th2}, 2 
            Pi]; $CellContext`lead = $CellContext`orderTwoAnglesAroundCircle[
            Part[$CellContext`mths, 1], 
            Part[$CellContext`mths, 2]]; $CellContext`trail = 
          3 - $CellContext`lead; $CellContext`th = 
          If[Part[$CellContext`mths, $CellContext`lead] > 
            Part[$CellContext`mths, $CellContext`trail], 
            Mean[$CellContext`mths], 
            Mod[
             Mean[{2 Pi + Part[$CellContext`mths, $CellContext`lead], 
               Part[$CellContext`mths, $CellContext`trail]}], 2 Pi]]; 
         If[Part[$CellContext`mths, 1] == 
           Part[$CellContext`mths, 2], $CellContext`th = 
           Part[$CellContext`mths, 1]]; Return[$CellContext`th]; 
         Null], $CellContext`orderTwoAnglesAroundCircle[
         Pattern[$CellContext`th1, 
          Blank[]], 
         Pattern[$CellContext`th2, 
          Blank[]]] := 
       Block[{$CellContext`mth1, $CellContext`mth2, $CellContext`o}, \
{$CellContext`mth1, $CellContext`mth2} = 
          Mod[{$CellContext`th1, $CellContext`th2}, 2 Pi]; $CellContext`o = 
          If[Abs[$CellContext`mth2 - $CellContext`mth1] < Pi, 
            If[$CellContext`mth2 > $CellContext`mth1, 2, 1], 
            If[$CellContext`mth2 > $CellContext`mth1, 1, 2]]; 
         If[Abs[Mod[$CellContext`th1, Pi] - Mod[$CellContext`th2, Pi]] < 
           10^(-12), $CellContext`o = 1; Null]; Return[$CellContext`o]; 
         Null], $CellContext`PlanarKeplerianFromPolar[
         PatternTest[
          Pattern[$CellContext`pol, 
           Blank[]], And[
           AssociationQ[#], 
           KeyExistsQ[#, "Coordinate"], #["Coordinate"] == "Polar"]& ]] := 
       Module[{$CellContext`r, $CellContext`th, $CellContext`vr, \
$CellContext`vth, $CellContext`vz, $CellContext`a, $CellContext`h, \
$CellContext`p, $CellContext`e, $CellContext`w, \
$CellContext`\[ScriptCapitalE]}, {$CellContext`r, $CellContext`th} = \
$CellContext`pol[
           "Position"]; {$CellContext`vr, $CellContext`vth, $CellContext`vz} = \
$CellContext`pol[
           "Velocity"]; $CellContext`h = $CellContext`r $CellContext`vth; \
$CellContext`\[ScriptCapitalE] = (1/
             2) ($CellContext`vr^2 + $CellContext`vth^2) - 
           1/$CellContext`r; $CellContext`a = 
          If[$CellContext`\[ScriptCapitalE] == 0, Infinity, (-1)/(
            2 $CellContext`\[ScriptCapitalE])]; $CellContext`p = \
$CellContext`h^2; $CellContext`e = Re[
            Sqrt[1 - $CellContext`p/$CellContext`a]]; $CellContext`w = Mod[
            If[$CellContext`e == 0, 0, 
             If[$CellContext`vr == 0, 
              If[
               Or[
                
                And[$CellContext`r < $CellContext`a, $CellContext`\
\[ScriptCapitalE] < 0], $CellContext`\[ScriptCapitalE] >= 0], $CellContext`th,
                Pi + $CellContext`th], $CellContext`th - 
              Sign[$CellContext`vr] Sign[$CellContext`vth] 
              ArcCos[($CellContext`h^2 - $CellContext`r)/($CellContext`r \
$CellContext`e)]]], 2 Pi]; 
         If[$CellContext`e == 0, $CellContext`e = 
           Sign[$CellContext`h] $MachineEpsilon]; 
         Association[
          "Coordinate" -> "KeplerianPlanar", "p" -> $CellContext`p, 
           "e" -> $CellContext`e, "w" -> $CellContext`w, 
           "h" -> $CellContext`h, "a" -> $CellContext`a, 
           "\[ScriptCapitalE]" -> $CellContext`\[ScriptCapitalE]]], \
$CellContext`\[CapitalDelta]V[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]], 
         Pattern[$CellContext`w, 
          Blank[]], 
         Pattern[$CellContext`h, 
          Blank[]]] := 
       Module[{$CellContext`r1, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2}, {$CellContext`r1, \
$CellContext`th1} = $CellContext`pol1[
           "Position"]; {$CellContext`vr1, $CellContext`vth1, \
$CellContext`vz1} = $CellContext`pol1[
           "Velocity"]; {$CellContext`r2, $CellContext`th2} = \
$CellContext`pol2[
           "Position"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`pol2[
           "Velocity"]; $CellContext`dVcs[$CellContext`r1, $CellContext`th1, \
$CellContext`vr1, $CellContext`vth1, $CellContext`vz1, $CellContext`r2, \
$CellContext`th2, $CellContext`vr2, $CellContext`vth2, $CellContext`vz2, \
$CellContext`w, $CellContext`h]], $CellContext`\[CapitalDelta]V[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]], 
         Pattern[$CellContext`w, 
          Blank[]], 
         Pattern[$CellContext`h, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] := 
       Module[{$CellContext`r, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2, $CellContext`p, \
$CellContext`alA, $CellContext`v, $CellContext`vth, $CellContext`vrA, \
$CellContext`vrB, $CellContext`vthB, $CellContext`DV1, $CellContext`DV2}, \
{$CellContext`r, $CellContext`th1} = $CellContext`pol1[
           "Position"]; {$CellContext`vr1, $CellContext`vth1, \
$CellContext`vz1} = $CellContext`pol1[
           "Velocity"]; {$CellContext`r2, $CellContext`th2} = \
$CellContext`pol2[
           "Position"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`pol2[
           "Velocity"]; $CellContext`p = $CellContext`r (
            1 + $CellContext`e 
             Cos[$CellContext`w - $CellContext`th1]); $CellContext`alA = 
          ArcTan[($CellContext`e Sin[$CellContext`th1 - $CellContext`w])/(
            1 + $CellContext`e 
             Cos[$CellContext`th1 - $CellContext`w])]; $CellContext`v = 
          Sqrt[2/$CellContext`r - (
             1 - $CellContext`e^2)/$CellContext`p]; $CellContext`vth = 
          Sign[$CellContext`h] $CellContext`v 
           Cos[$CellContext`alA]; $CellContext`vrA = 
          Sign[$CellContext`h] $CellContext`v 
           Sin[$CellContext`alA]; $CellContext`vrB = -$CellContext`vrA; \
$CellContext`DV1 = 
          Sqrt[($CellContext`vth - $CellContext`vth1)^2 + ($CellContext`vrA - \
$CellContext`vr1)^2 + $CellContext`vz1^2]; $CellContext`DV2 = 
          Sqrt[($CellContext`vth - $CellContext`vth2)^2 + ($CellContext`vrB - \
$CellContext`vr2)^2 + $CellContext`vz2^2]; $CellContext`DV1 + \
$CellContext`DV2], $CellContext`dVcs = CompiledFunction[{10, 10., 5400}, {
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 3}, {3, 0, 
         4}, {3, 0, 5}, {3, 0, 6}, {3, 0, 7}, {3, 0, 8}, {3, 0, 9}, {3, 0, 
         10}, {3, 0, 11}, {3, 0, 27}}, {{2, {2, 0, 0}}, {1, {2, 0, 1}}}, {0, 
         3, 37, 0, 
         0}, {{19, 10, 12}, {13, 1, 12, 13}, {40, 2, 3, 0, 13, 3, 0, 14}, {13,
           6, 12, 15}, {40, 2, 3, 0, 15, 3, 0, 16}, {19, 0, 17}, {16, 17, 5, 
          14, 17}, {16, 0, 5, 16, 18}, {13, 17, 18, 17}, {16, 0, 14, 18}, {16,
           5, 16, 19}, {19, 19, 20}, {13, 18, 20, 18}, {40, 60, 3, 0, 18, 3, 
          0, 20}, {16, 17, 20, 17}, {19, 17, 20}, {19, 10, 17}, {19, 5, 18}, {
          13, 0, 18, 19}, {13, 1, 17, 18}, {40, 2, 3, 0, 18, 3, 0, 21}, {16, 
          0, 21, 18}, {13, 6, 17, 21}, {40, 2, 3, 0, 21, 3, 0, 22}, {16, 5, 
          22, 21}, {19, 21, 22}, {13, 18, 22, 18}, {40, 60, 3, 0, 18, 3, 0, 
          22}, {16, 19, 22, 19}, {19, 19, 22}, {10, 0, 19}, {40, 60, 3, 0, 19,
           3, 0, 18}, {10, 1, 19}, {13, 19, 22, 19}, {40, 60, 3, 0, 19, 3, 0, 
          21}, {16, 20, 21, 19}, {19, 22, 21}, {10, 1, 23}, {13, 23, 21, 
          23}, {40, 60, 3, 0, 23, 3, 0, 21}, {16, 20, 21, 23}, {13, 19, 23, 
          19}, {16, 18, 19, 18}, {19, 10, 19}, {13, 1, 19, 23}, {40, 1, 3, 0, 
          23, 3, 0, 21}, {16, 22, 21, 24}, {40, 2, 3, 0, 23, 3, 0, 21}, {16, 
          22, 21, 25}, {10, 1, 21}, {13, 21, 25, 21}, {40, 60, 3, 0, 21, 3, 0,
           25}, {16, 24, 25, 24}, {40, 19, 3, 0, 24, 3, 0, 25}, {19, 10, 
          24}, {13, 6, 24, 21}, {40, 1, 3, 0, 21, 3, 0, 26}, {16, 22, 26, 
          27}, {40, 2, 3, 0, 21, 3, 0, 26}, {16, 22, 26, 28}, {10, 1, 26}, {
          13, 26, 28, 26}, {40, 60, 3, 0, 26, 3, 0, 28}, {16, 27, 28, 27}, {
          40, 19, 3, 0, 27, 3, 0, 28}, {40, 60, 3, 0, 0, 3, 0, 27}, {10, 0, 
          26}, {16, 26, 27, 26}, {40, 60, 3, 0, 18, 3, 0, 27}, {19, 27, 29}, {
          13, 26, 29, 26}, {40, 57, 3, 0, 26, 3, 0, 29}, {40, 60, 3, 0, 5, 3, 
          0, 26}, {10, 0, 27}, {16, 27, 26, 27}, {40, 60, 3, 0, 18, 3, 0, 
          26}, {19, 26, 30}, {13, 27, 30, 27}, {40, 57, 3, 0, 27, 3, 0, 30}, {
          40, 44, 3, 0, 11, 2, 0, 2}, {40, 2, 3, 0, 25, 3, 0, 27}, {10, 2, 
          26}, {16, 26, 29, 27, 26}, {40, 44, 3, 0, 11, 2, 0, 2}, {40, 1, 3, 
          0, 25, 3, 0, 27}, {10, 2, 31}, {16, 31, 29, 27, 31}, {40, 44, 3, 0, 
          11, 2, 0, 2}, {40, 2, 3, 0, 28, 3, 0, 27}, {10, 2, 32}, {16, 32, 30,
           27, 32}, {40, 44, 3, 0, 11, 2, 0, 2}, {40, 1, 3, 0, 28, 3, 0, 
          27}, {10, 2, 33}, {16, 33, 30, 27, 33}, {19, 3, 27}, {13, 26, 27, 
          34}, {40, 56, 3, 0, 34, 3, 0, 27}, {19, 2, 34}, {13, 31, 34, 35}, {
          40, 56, 3, 0, 35, 3, 0, 34}, {40, 56, 3, 0, 4, 3, 0, 35}, {13, 27, 
          34, 35, 27}, {40, 57, 3, 0, 27, 3, 0, 34}, {19, 8, 27}, {13, 32, 27,
           35}, {40, 56, 3, 0, 35, 3, 0, 27}, {19, 7, 35}, {13, 33, 35, 36}, {
          40, 56, 3, 0, 36, 3, 0, 35}, {40, 56, 3, 0, 9, 3, 0, 36}, {13, 27, 
          35, 36, 27}, {40, 57, 3, 0, 27, 3, 0, 35}, {13, 34, 35, 27}, {1}}, 
         Function[{$CellContext`r1, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2, $CellContext`w, \
$CellContext`h}, 
          
          Block[{Compile`$2, Compile`$3, Compile`$4, Compile`$6, Compile`$7, 
            Compile`$19, Compile`$42, Compile`$43, Compile`$52, Compile`$53}, 
           
           
           Block[{$CellContext`p, $CellContext`e, $CellContext`a, \
$CellContext`alA, $CellContext`alB, $CellContext`vA, $CellContext`vB, \
$CellContext`vrA, $CellContext`vthA, $CellContext`vrB, $CellContext`vthB, \
$CellContext`DV1, $CellContext`DV2}, $CellContext`p = (
              Compile`$2 = -$CellContext`w; 
              Compile`$3 = $CellContext`th1 + Compile`$2; 
              Compile`$4 = Cos[Compile`$3]; 
              Compile`$6 = $CellContext`th2 + Compile`$2; 
              Compile`$7 = 
               Cos[Compile`$6]; -(((-$CellContext`r1) $CellContext`r2 
                  Compile`$4 + $CellContext`r1 $CellContext`r2 
                  Compile`$7)/($CellContext`r1 Compile`$4 - $CellContext`r2 
                Compile`$7))); $CellContext`e = (
              Compile`$19 = -$CellContext`w; -(($CellContext`r1 - \
$CellContext`r2)/($CellContext`r1 
                 Cos[$CellContext`th1 + Compile`$19] - $CellContext`r2 
                Cos[$CellContext`th2 + Compile`$19]))); $CellContext`a = (1/
               2) ($CellContext`p/(1 + $CellContext`e) + $CellContext`p/(
                1 - $CellContext`e)); $CellContext`alA = (
              Compile`$42 = -$CellContext`w; 
              Compile`$43 = $CellContext`th1 + Compile`$42; 
              ArcTan[($CellContext`e Sin[Compile`$43])/(
                1 + $CellContext`e Cos[Compile`$43])]); $CellContext`alB = (
              Compile`$52 = -$CellContext`w; 
              Compile`$53 = $CellContext`th2 + Compile`$52; 
              ArcTan[($CellContext`e Sin[Compile`$53])/(
                1 + $CellContext`e Cos[Compile`$53])]); $CellContext`vA = 
             Sqrt[2/$CellContext`r1 - 1/$CellContext`a]; $CellContext`vB = 
             Sqrt[2/$CellContext`r2 - 1/$CellContext`a]; $CellContext`vthA = 
             Sign[$CellContext`h] $CellContext`vA 
              Cos[$CellContext`alA]; $CellContext`vrA = 
             Sign[$CellContext`h] $CellContext`vA 
              Sin[$CellContext`alA]; $CellContext`vthB = 
             Sign[$CellContext`h] $CellContext`vB 
              Cos[$CellContext`alB]; $CellContext`vrB = 
             Sign[$CellContext`h] $CellContext`vB 
              Sin[$CellContext`alB]; $CellContext`DV1 = 
             Sqrt[($CellContext`vthA - $CellContext`vth1)^2 + \
($CellContext`vrA - $CellContext`vr1)^2 + $CellContext`vz1^2]; \
$CellContext`DV2 = 
             Sqrt[($CellContext`vthB - $CellContext`vth2)^2 + \
($CellContext`vrB - $CellContext`vr2)^2 + $CellContext`vz2^2]; \
$CellContext`DV1 + $CellContext`DV2]]], Evaluate, 
         LibraryFunction[
         "/Users/Jacob/Library/Mathematica/ApplicationData/CCompilerDriver/\
BuildFolder/pu174532-71015/compiledFunction0.dylib", 
          "compiledFunction0", {{Real, 0, "Constant"}, {
           Real, 0, "Constant"}, {Real, 0, "Constant"}, {
           Real, 0, "Constant"}, {Real, 0, "Constant"}, {
           Real, 0, "Constant"}, {Real, 0, "Constant"}, {
           Real, 0, "Constant"}, {Real, 0, "Constant"}, {
           Real, 0, "Constant"}, {Real, 0, "Constant"}, {
           Real, 0, "Constant"}}, Real]], 
       Attributes[Compile`$2] = {Temporary}, 
       Attributes[Compile`$3] = {Temporary}, 
       Attributes[Compile`$4] = {Temporary}, 
       Attributes[Compile`$6] = {Temporary}, 
       Attributes[Compile`$7] = {Temporary}, 
       Attributes[Compile`$19] = {Temporary}, 
       Attributes[Compile`$42] = {Temporary}, 
       Attributes[Compile`$43] = {Temporary}, 
       Attributes[Compile`$52] = {Temporary}, 
       Attributes[Compile`$53] = {
        Temporary}, $CellContext`\[CapitalDelta]VVectors[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]], 
         Pattern[$CellContext`w, 
          Blank[]], 
         Pattern[$CellContext`h, 
          Blank[]]] := 
       Module[{$CellContext`r1, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2, $CellContext`p, \
$CellContext`e, $CellContext`a, $CellContext`alA, $CellContext`alB, \
$CellContext`vA, $CellContext`vB, $CellContext`vrA, $CellContext`vthA, \
$CellContext`vrB, $CellContext`vthB, $CellContext`DV1, $CellContext`DV2}, \
{$CellContext`r1, $CellContext`th1} = $CellContext`pol1[
           "Position"]; {$CellContext`vr1, $CellContext`vth1, \
$CellContext`vz1} = $CellContext`pol1[
           "Velocity"]; {$CellContext`r2, $CellContext`th2} = \
$CellContext`pol2[
           "Position"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`pol2[
           "Velocity"]; $CellContext`p = -(((-$CellContext`r1) \
$CellContext`r2 
              Cos[$CellContext`th1 - $CellContext`w] + $CellContext`r1 \
$CellContext`r2 Cos[$CellContext`th2 - $CellContext`w])/($CellContext`r1 
             Cos[$CellContext`th1 - $CellContext`w] - $CellContext`r2 
            Cos[$CellContext`th2 - $CellContext`w])); $CellContext`e = \
-(($CellContext`r1 - $CellContext`r2)/($CellContext`r1 
             Cos[$CellContext`th1 - $CellContext`w] - $CellContext`r2 
            Cos[$CellContext`th2 - $CellContext`w])); $CellContext`a = (1/
            2) ($CellContext`p/(1 + $CellContext`e) + $CellContext`p/(
             1 - $CellContext`e)); $CellContext`alA = 
          ArcTan[($CellContext`e Sin[$CellContext`th1 - $CellContext`w])/(
            1 + $CellContext`e 
             Cos[$CellContext`th1 - $CellContext`w])]; $CellContext`alB = 
          ArcTan[($CellContext`e Sin[$CellContext`th2 - $CellContext`w])/(
            1 + $CellContext`e 
             Cos[$CellContext`th2 - $CellContext`w])]; $CellContext`vA = 
          Sqrt[2/$CellContext`r1 - 1/$CellContext`a]; $CellContext`vB = 
          Sqrt[2/$CellContext`r2 - 1/$CellContext`a]; $CellContext`vthA = 
          Sign[$CellContext`h] $CellContext`vA 
           Cos[$CellContext`alA]; $CellContext`vrA = 
          Sign[$CellContext`h] $CellContext`vA 
           Sin[$CellContext`alA]; $CellContext`vthB = 
          Sign[$CellContext`h] $CellContext`vB 
           Cos[$CellContext`alB]; $CellContext`vrB = 
          Sign[$CellContext`h] $CellContext`vB 
           Sin[$CellContext`alB]; $CellContext`DV1 = {$CellContext`vrA - \
$CellContext`vr1, $CellContext`vthA - $CellContext`vth1, -$CellContext`vz1}; \
$CellContext`DV2 = {-($CellContext`vrB - $CellContext`vr2), \
-($CellContext`vthB - $CellContext`vth2), $CellContext`vz2}; \
{$CellContext`DV1, $CellContext`DV2}], $CellContext`\[CapitalDelta]VVectors[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]], 
         Pattern[$CellContext`w, 
          Blank[]], 
         Pattern[$CellContext`h, 
          Blank[]], 
         Pattern[$CellContext`e, 
          Blank[]]] := 
       Module[{$CellContext`r, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2, $CellContext`p, \
$CellContext`alA, $CellContext`v, $CellContext`vth, $CellContext`vrA, \
$CellContext`vrB, $CellContext`vthB, $CellContext`DV1, $CellContext`DV2}, \
{$CellContext`r, $CellContext`th1} = $CellContext`pol1[
           "Position"]; {$CellContext`vr1, $CellContext`vth1, \
$CellContext`vz1} = $CellContext`pol1[
           "Velocity"]; {$CellContext`r2, $CellContext`th2} = \
$CellContext`pol2[
           "Position"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`pol2[
           "Velocity"]; $CellContext`p = $CellContext`r (
            1 + $CellContext`e 
             Cos[$CellContext`w - $CellContext`th1]); $CellContext`alA = 
          ArcTan[($CellContext`e Sin[$CellContext`th1 - $CellContext`w])/(
            1 + $CellContext`e 
             Cos[$CellContext`th1 - $CellContext`w])]; $CellContext`v = 
          Sqrt[2/$CellContext`r - (
             1 - $CellContext`e^2)/$CellContext`p]; $CellContext`vth = 
          Sign[$CellContext`h] $CellContext`v 
           Cos[$CellContext`alA]; $CellContext`vrA = 
          Sign[$CellContext`h] $CellContext`v 
           Sin[$CellContext`alA]; $CellContext`vrB = -$CellContext`vrA; \
$CellContext`DV1 = {$CellContext`vrA - $CellContext`vr1, $CellContext`vth - \
$CellContext`vth1, -$CellContext`vz1}; $CellContext`DV2 = {-($CellContext`vrB - \
$CellContext`vr2), -($CellContext`vth - $CellContext`vth2), $CellContext`vz2}; \
{$CellContext`DV1, $CellContext`DV2}], $CellContext`geneAngGeneRad[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]]] := 
       Module[{$CellContext`r1, $CellContext`th1, $CellContext`vr1, \
$CellContext`vth1, $CellContext`vz1, $CellContext`r2, $CellContext`th2, \
$CellContext`vr2, $CellContext`vth2, $CellContext`vz2, $CellContext`v1, \
$CellContext`v2, $CellContext`sh, $CellContext`wstart, $CellContext`wInt, \
$CellContext`tDV, $CellContext`wrange, $CellContext`wrange1, \
$CellContext`wrange2, $CellContext`wstep, $CellContext`m, $CellContext`m1, \
$CellContext`m2, $CellContext`vc1, $CellContext`vc2}, {$CellContext`r1, \
$CellContext`th1} = {
            Part[
             $CellContext`pol1["Position"], 1], 
            0}; $CellContext`v1 = $CellContext`pol1[
           "Velocity"]; {$CellContext`vr1, $CellContext`vth1, \
$CellContext`vz1} = $CellContext`v1; {$CellContext`r2, $CellContext`th2} = \
$CellContext`pol2["Position"]; $CellContext`v2 = $CellContext`pol2[
           "Velocity"]; {$CellContext`vr2, $CellContext`vth2, \
$CellContext`vz2} = $CellContext`v2; 
         If[Abs[$CellContext`th2 - Pi] < 
           10 $MachineEpsilon, $CellContext`th2 = Pi; $CellContext`wstart = 
            If[$CellContext`r1 < $CellContext`r2, 0, Pi]; 
           Null, $CellContext`wstart = \
$CellContext`startingOmega[$CellContext`pol1, $CellContext`pol2]; 
           Null]; $CellContext`wInt = \
$CellContext`Acceptable\[Omega]Interval[{$CellContext`r1, $CellContext`th1}, \
{$CellContext`r2, $CellContext`th2}]; $CellContext`wstep = 0.0001; If[
           And[
           Sign[$CellContext`vth1] == Sign[$CellContext`vth2], 
            Sign[$CellContext`vth1] != 
            0], $CellContext`wrange = $CellContext`getInequalityForPoint[
              
              Part[$CellContext`wInt, (3 - Sign[$CellContext`vth1])/2, 
               2], $CellContext`wstart]; $CellContext`m = \
$CellContext`MinimizeUnimodalFunction[$CellContext`\[CapitalDelta]V[$\
CellContext`pol1, $CellContext`pol2, #, 
               Sign[$CellContext`vth1]]& , 
              Part[$CellContext`wrange, 1] + $CellContext`wstep/10, 
              Part[$CellContext`wrange, 3] - $CellContext`wstep/
              10, $CellContext`wstep]; $CellContext`sh = 
            Sign[$CellContext`vth1]; 
           Null, {$CellContext`wrange1, $CellContext`wrange2} = 
            Map[$CellContext`getInequalityForPoint[
               Part[$CellContext`wInt, #, 2], $CellContext`wstart]& , 
              Range[
              2]]; $CellContext`m1 = \
$CellContext`MinimizeUnimodalFunction[$CellContext`\[CapitalDelta]V[$\
CellContext`pol1, $CellContext`pol2, #, 1]& , 
              Part[$CellContext`wrange1, 1] + $CellContext`wstep/10, 
              Part[$CellContext`wrange1, 3] - $CellContext`wstep/
              10, $CellContext`wstep]; $CellContext`m2 = \
$CellContext`MinimizeUnimodalFunction[$CellContext`\[CapitalDelta]V[$\
CellContext`pol1, $CellContext`pol2, #, -1]& , 
              Part[$CellContext`wrange2, 1] + $CellContext`wstep/10, 
              Part[$CellContext`wrange2, 3] - $CellContext`wstep/
              10, $CellContext`wstep]; {$CellContext`m, $CellContext`sh} = 
            If[Part[$CellContext`m1, 2] < 
              Part[$CellContext`m2, 2], {$CellContext`m1, 
               1}, {$CellContext`m2, -1}]; Null]; $CellContext`tDV = 
          Part[$CellContext`m, 
            2]; {$CellContext`vc1, $CellContext`vc2} = $CellContext`\
\[CapitalDelta]VVectors[$CellContext`pol1, $CellContext`pol2, 
            Part[$CellContext`m, 1], $CellContext`sh]; 
         Association[
          "Total \[CapitalDelta]V" -> $CellContext`tDV, "Burn 1" -> 
           Association[
            "Coordinate" -> "Polar", 
             "Position" -> $CellContext`pol1["Position"], 
             "Velocity" -> $CellContext`pol1["Velocity"], 
             "VelocityChange" -> $CellContext`vc1], "Burn 2" -> 
           Association[
            "Coordinate" -> "Polar", 
             "Position" -> $CellContext`pol2["Position"], 
             "Velocity" -> $CellContext`pol2["Velocity"] - $CellContext`vc2, 
             "VelocityChange" -> $CellContext`vc2]]], \
$CellContext`startingOmega[
         Pattern[$CellContext`pol1, 
          Blank[]], 
         Pattern[$CellContext`pol2, 
          Blank[]]] := 
       Module[{$CellContext`r1, $CellContext`th1, $CellContext`r2, \
$CellContext`th2, $CellContext`wstart, $CellContext`wstart1, \
$CellContext`wstart2, $CellContext`ewInt}, {$CellContext`r1, \
$CellContext`th1} = {
            Part[
             $CellContext`pol1["Position"], 1], 
            0}; {$CellContext`r2, $CellContext`th2} = $CellContext`pol2[
           "Position"]; {$CellContext`wstart1, $CellContext`wstart2} = Mod[{
             
             ArcTan[-$CellContext`r1 + $CellContext`r2 Cos[$CellContext`th2], 
              Plus[$CellContext`r2] Sin[$CellContext`th2]], 
             
             ArcTan[$CellContext`r1 - $CellContext`r2 
              Cos[$CellContext`th2], (-$CellContext`r2) 
              Sin[$CellContext`th2]]}, 2 
            Pi]; $CellContext`ewInt = \
$CellContext`eIsPositiveInterval[{$CellContext`r1, $CellContext`th1}, \
{$CellContext`r2, $CellContext`th2}]; $CellContext`wstart = If[
            
            IntervalMemberQ[$CellContext`ewInt, $CellContext`wstart1], \
$CellContext`wstart1, 
            If[
             
             IntervalMemberQ[$CellContext`ewInt, $CellContext`wstart1 + 
              2 Pi], $CellContext`wstart1 + 2 Pi, $CellContext`wstart2]]; 
         Return[$CellContext`wstart]; Null], $CellContext`eIsPositiveInterval[{
          Pattern[$CellContext`r1, 
           Blank[]], 0}, {
          Pattern[$CellContext`r2, 
           Blank[]], 
          Pattern[$CellContext`th2, 
           Blank[]]}] := 
       Block[{$CellContext`asymp1, $CellContext`asymps, $CellContext`eIs1}, \
$CellContext`asymp1 = Mod[
            
            ArcTan[$CellContext`r2 
             Sin[$CellContext`th2], $CellContext`r1 - $CellContext`r2 
             Cos[$CellContext`th2]], 
            Pi]; $CellContext`asymps = {$CellContext`asymp1, \
$CellContext`asymp1 + 
            Pi}; $CellContext`eIs1 = $CellContext`eIs1ep[$CellContext`r1, \
$CellContext`r2, $CellContext`th2]; If[
           And[
           Part[$CellContext`eIs1, 1] > Part[$CellContext`asymps, 1], 
            Part[$CellContext`eIs1, 2] < Part[$CellContext`asymps, 2]], 
           Interval[{
             Part[$CellContext`asymps, 1], 
             Part[$CellContext`asymps, 2]}], 
           Interval[{
             Part[$CellContext`asymps, 2], 2 Pi + 
             Part[$CellContext`asymps, 
               1]}]]], $CellContext`eIsPositiveInterval[{
          Pattern[$CellContext`r1, 
           Blank[]], 
          Pattern[$CellContext`th1, 
           Blank[]]}, {
          Pattern[$CellContext`r2, 
           Blank[]], 
          Pattern[$CellContext`th2, 
           Blank[]]}] := 
       Block[{$CellContext`asymp1, $CellContext`asymps, $CellContext`eIs1}, \
$CellContext`asymp1 = Mod[
            
            ArcTan[(-$CellContext`r1) Sin[$CellContext`th1] + $CellContext`r2 
              Sin[$CellContext`th2], $CellContext`r1 
              Cos[$CellContext`th1] - $CellContext`r2 Cos[$CellContext`th2]], 
            Pi]; $CellContext`asymps = {$CellContext`asymp1, \
$CellContext`asymp1 + 
            Pi}; $CellContext`eIs1 = $CellContext`eIs1l[{$CellContext`r1, \
$CellContext`th1}, {$CellContext`r2, $CellContext`th2}]; If[
           And[
           Part[$CellContext`eIs1, 1] > Part[$CellContext`asymps, 1], 
            Part[$CellContext`eIs1, 2] < Part[$CellContext`asymps, 2]], 
           Interval[{
             Part[$CellContext`asymps, 1], 
             Part[$CellContext`asymps, 2]}], 
           Interval[{
             Part[$CellContext`asymps, 2], 2 Pi + 
             Part[$CellContext`asymps, 1]}]]], $CellContext`eIs1ep[
         Pattern[$CellContext`r1o, 
          Blank[]], 
         Pattern[$CellContext`r2o, 
          Blank[]], 
         Pattern[$CellContext`th2o, 
          Blank[]]] := 
       Block[{$CellContext`r1, $CellContext`r2, $CellContext`th2, \
$CellContext`pts, $CellContext`p1, $CellContext`p2, $CellContext`p3}, \
{$CellContext`r1, $CellContext`r2, $CellContext`th2} = 
          Map[SetPrecision[#, 
             40]& , {$CellContext`r1o, $CellContext`r2o, $CellContext`th2o}]; \
$CellContext`p1 = 
          1/($CellContext`r1^2 + $CellContext`r2^2 - 
           2 $CellContext`r1 $CellContext`r2 
           Cos[$CellContext`th2]); $CellContext`p2 = -$CellContext`r1^2 + \
$CellContext`r1 $CellContext`r2 + $CellContext`r1 $CellContext`r2 
            Cos[$CellContext`th2] - $CellContext`r2^2 
           Cos[$CellContext`th2]; $CellContext`p3 = 
          2 Sin[$CellContext`th2/2] Sin[$CellContext`th2] 
           Sqrt[$CellContext`r1 $CellContext`r2^3]; $CellContext`pts = {-
            ArcCos[($CellContext`p2 - $CellContext`p3) $CellContext`p1], 
            ArcCos[($CellContext`p2 - $CellContext`p3) $CellContext`p1], -
            ArcCos[($CellContext`p2 + $CellContext`p3) $CellContext`p1], 
            ArcCos[($CellContext`p2 + $CellContext`p3) $CellContext`p1]}; Sort[
           Mod[
            
            Select[$CellContext`pts, 
             Abs[-(($CellContext`r1 - $CellContext`r2)/($CellContext`r1 
                  Cos[#] - $CellContext`r2 Cos[$CellContext`th2 - #])) - 1] < 
             10^(-16)& ], 2 Pi]]], $CellContext`eIs1l[{
          Pattern[$CellContext`r1, 
           Blank[]], 
          Pattern[$CellContext`th1, 
           Blank[]]}, {
          Pattern[$CellContext`r2, 
           Blank[]], 
          Pattern[$CellContext`th2, 
           
           Blank[]]}] := $CellContext`eIs1c[$CellContext`r1, \
$CellContext`th1, $CellContext`r2, $CellContext`th2], $CellContext`eIs1c = 
       CompiledFunction[{10, 10., 5464}, {
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 3}, {3, 1, 
         4}}, {{0, {2, 0, 2}}, {6.283185307179586, {3, 0, 21}}, {
          10, {2, 0, 8}}, {-1., {3, 0, 19}}, {
          2, {2, 0, 0}}, {-1, {2, 0, 11}}, {7, {2, 0, 9}}, {1, {2, 0, 6}}, {
          3, {2, 0, 1}}, {0., {3, 0, 20}}}, {1, 16, 22, 0, 
         6}, {{40, 56, 3, 0, 0, 3, 0, 5}, {40, 56, 3, 0, 2, 3, 0, 8}, {19, 3, 
          9}, {13, 1, 9, 14}, {40, 2, 3, 0, 14, 3, 0, 9}, {10, 0, 14}, {16, 
          14, 0, 2, 9, 14}, {19, 14, 9}, {13, 5, 8, 9, 5}, {40, 60, 3, 0, 5, 
          3, 0, 8}, {40, 56, 3, 0, 0, 3, 0, 5}, {19, 5, 9}, {40, 2, 3, 0, 1, 
          3, 0, 5}, {16, 9, 5, 9}, {40, 2, 3, 0, 1, 3, 0, 5}, {16, 0, 2, 5, 
          14}, {40, 2, 3, 0, 3, 3, 0, 5}, {16, 0, 2, 5, 4}, {40, 56, 3, 0, 2, 
          3, 0, 5}, {40, 2, 3, 0, 3, 3, 0, 6}, {16, 5, 6, 5}, {19, 5, 6}, {41,
           263, 3, 0, 0, 2, 0, 1, 3, 0, 5}, {40, 1, 3, 0, 1, 3, 0, 7}, {40, 
          56, 3, 0, 7, 3, 0, 15}, {10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 11}, {
          16, 1, 11, 7}, {10, 0, 11}, {40, 60, 3, 0, 11, 3, 0, 16}, {16, 3, 
          16, 11}, {19, 11, 16}, {13, 7, 16, 7}, {40, 1, 3, 0, 7, 3, 0, 16}, {
          40, 56, 3, 0, 16, 3, 0, 7}, {16, 5, 2, 15, 7, 5}, {40, 56, 3, 0, 0, 
          3, 0, 15}, {40, 56, 3, 0, 2, 3, 0, 7}, {40, 1, 3, 0, 1, 3, 0, 16}, {
          10, 0, 11}, {40, 60, 3, 0, 11, 3, 0, 10}, {16, 1, 10, 11}, {10, 0, 
          10}, {40, 60, 3, 0, 10, 3, 0, 17}, {16, 3, 17, 10}, {19, 10, 17}, {
          13, 11, 17, 11}, {40, 1, 3, 0, 11, 3, 0, 17}, {40, 56, 3, 0, 17, 3, 
          0, 11}, {40, 1, 3, 0, 3, 3, 0, 17}, {10, 0, 10}, {16, 10, 15, 7, 16,
           11, 17, 10}, {19, 10, 15}, {41, 263, 3, 0, 2, 2, 0, 1, 3, 0, 10}, {
          10, 0, 7}, {40, 60, 3, 0, 7, 3, 0, 16}, {16, 1, 16, 7}, {10, 0, 
          16}, {40, 60, 3, 0, 16, 3, 0, 11}, {16, 3, 11, 16}, {19, 16, 11}, {
          13, 7, 11, 7}, {40, 1, 3, 0, 7, 3, 0, 11}, {40, 56, 3, 0, 11, 3, 0, 
          7}, {40, 1, 3, 0, 3, 3, 0, 11}, {40, 56, 3, 0, 11, 3, 0, 16}, {16, 
          0, 10, 7, 16, 11}, {13, 5, 15, 11, 5}, {40, 57, 3, 0, 5, 3, 0, 
          15}, {10, 0, 5}, {16, 5, 15, 5}, {19, 5, 15}, {13, 9, 14, 4, 6, 15, 
          9}, {16, 8, 9, 8}, {40, 18, 3, 0, 8, 3, 0, 9}, {19, 9, 8}, {40, 56, 
          3, 0, 0, 3, 0, 9}, {40, 56, 3, 0, 2, 3, 0, 14}, {19, 3, 4}, {13, 1, 
          4, 6}, {40, 2, 3, 0, 6, 3, 0, 4}, {10, 0, 6}, {16, 6, 0, 2, 4, 6}, {
          19, 6, 4}, {13, 9, 14, 4, 9}, {40, 60, 3, 0, 9, 3, 0, 14}, {40, 56, 
          3, 0, 0, 3, 0, 9}, {19, 9, 4}, {40, 2, 3, 0, 1, 3, 0, 9}, {16, 4, 9,
           4}, {40, 2, 3, 0, 1, 3, 0, 9}, {16, 0, 2, 9, 6}, {40, 2, 3, 0, 3, 
          3, 0, 9}, {16, 0, 2, 9, 15}, {40, 56, 3, 0, 2, 3, 0, 9}, {40, 2, 3, 
          0, 3, 3, 0, 5}, {16, 9, 5, 9}, {19, 9, 5}, {41, 263, 3, 0, 0, 2, 0, 
          1, 3, 0, 9}, {40, 1, 3, 0, 1, 3, 0, 11}, {40, 56, 3, 0, 11, 3, 0, 
          10}, {10, 0, 11}, {40, 60, 3, 0, 11, 3, 0, 7}, {16, 1, 7, 11}, {10, 
          0, 7}, {40, 60, 3, 0, 7, 3, 0, 16}, {16, 3, 16, 7}, {19, 7, 16}, {
          13, 11, 16, 11}, {40, 1, 3, 0, 11, 3, 0, 16}, {40, 56, 3, 0, 16, 3, 
          0, 11}, {16, 9, 2, 10, 11, 9}, {40, 56, 3, 0, 0, 3, 0, 10}, {40, 56,
           3, 0, 2, 3, 0, 11}, {40, 1, 3, 0, 1, 3, 0, 16}, {10, 0, 7}, {40, 
          60, 3, 0, 7, 3, 0, 17}, {16, 1, 17, 7}, {10, 0, 17}, {40, 60, 3, 0, 
          17, 3, 0, 12}, {16, 3, 12, 17}, {19, 17, 12}, {13, 7, 12, 7}, {40, 
          1, 3, 0, 7, 3, 0, 12}, {40, 56, 3, 0, 12, 3, 0, 7}, {40, 1, 3, 0, 3,
           3, 0, 12}, {10, 0, 17}, {16, 17, 10, 11, 16, 7, 12, 17}, {19, 17, 
          10}, {41, 263, 3, 0, 2, 2, 0, 1, 3, 0, 17}, {10, 0, 11}, {40, 60, 3,
           0, 11, 3, 0, 16}, {16, 1, 16, 11}, {10, 0, 16}, {40, 60, 3, 0, 16, 
          3, 0, 7}, {16, 3, 7, 16}, {19, 16, 7}, {13, 11, 7, 11}, {40, 1, 3, 
          0, 11, 3, 0, 7}, {40, 56, 3, 0, 7, 3, 0, 11}, {40, 1, 3, 0, 3, 3, 0,
           7}, {40, 56, 3, 0, 7, 3, 0, 16}, {16, 0, 17, 11, 16, 7}, {13, 9, 
          10, 7, 9}, {40, 57, 3, 0, 9, 3, 0, 10}, {10, 0, 9}, {16, 9, 10, 
          9}, {19, 9, 10}, {13, 4, 6, 15, 5, 10, 4}, {16, 14, 4, 14}, {40, 18,
           3, 0, 14, 3, 0, 4}, {40, 56, 3, 0, 0, 3, 0, 14}, {40, 56, 3, 0, 2, 
          3, 0, 6}, {19, 3, 15}, {13, 1, 15, 5}, {40, 2, 3, 0, 5, 3, 0, 15}, {
          10, 0, 5}, {16, 5, 0, 2, 15, 5}, {19, 5, 15}, {13, 14, 6, 15, 14}, {
          40, 60, 3, 0, 14, 3, 0, 6}, {40, 56, 3, 0, 0, 3, 0, 14}, {19, 14, 
          15}, {40, 2, 3, 0, 1, 3, 0, 14}, {16, 15, 14, 15}, {40, 2, 3, 0, 1, 
          3, 0, 14}, {16, 0, 2, 14, 5}, {40, 2, 3, 0, 3, 3, 0, 14}, {16, 0, 2,
           14, 10}, {40, 56, 3, 0, 2, 3, 0, 14}, {40, 2, 3, 0, 3, 3, 0, 9}, {
          16, 14, 9, 14}, {19, 14, 9}, {41, 263, 3, 0, 0, 2, 0, 1, 3, 0, 
          14}, {40, 1, 3, 0, 1, 3, 0, 7}, {40, 56, 3, 0, 7, 3, 0, 17}, {10, 0,
           7}, {40, 60, 3, 0, 7, 3, 0, 11}, {16, 1, 11, 7}, {10, 0, 11}, {40, 
          60, 3, 0, 11, 3, 0, 16}, {16, 3, 16, 11}, {19, 11, 16}, {13, 7, 16, 
          7}, {40, 1, 3, 0, 7, 3, 0, 16}, {40, 56, 3, 0, 16, 3, 0, 7}, {16, 
          14, 2, 17, 7, 14}, {40, 56, 3, 0, 0, 3, 0, 17}, {40, 56, 3, 0, 2, 3,
           0, 7}, {40, 1, 3, 0, 1, 3, 0, 16}, {10, 0, 11}, {40, 60, 3, 0, 11, 
          3, 0, 12}, {16, 1, 12, 11}, {10, 0, 12}, {40, 60, 3, 0, 12, 3, 0, 
          13}, {16, 3, 13, 12}, {19, 12, 13}, {13, 11, 13, 11}, {40, 1, 3, 0, 
          11, 3, 0, 13}, {40, 56, 3, 0, 13, 3, 0, 11}, {40, 1, 3, 0, 3, 3, 0, 
          13}, {10, 0, 12}, {16, 12, 17, 7, 16, 11, 13, 12}, {19, 12, 17}, {
          41, 263, 3, 0, 2, 2, 0, 1, 3, 0, 12}, {10, 0, 7}, {40, 60, 3, 0, 7, 
          3, 0, 16}, {16, 1, 16, 7}, {10, 0, 16}, {40, 60, 3, 0, 16, 3, 0, 
          11}, {16, 3, 11, 16}, {19, 16, 11}, {13, 7, 11, 7}, {40, 1, 3, 0, 7,
           3, 0, 11}, {40, 56, 3, 0, 11, 3, 0, 7}, {40, 1, 3, 0, 3, 3, 0, 
          11}, {40, 56, 3, 0, 11, 3, 0, 16}, {16, 0, 12, 7, 16, 11}, {13, 14, 
          17, 11, 14}, {40, 57, 3, 0, 14, 3, 0, 17}, {10, 0, 14}, {16, 14, 17,
           14}, {13, 15, 5, 10, 9, 14, 15}, {16, 6, 15, 6}, {40, 18, 3, 0, 6, 
          3, 0, 15}, {19, 15, 6}, {40, 56, 3, 0, 0, 3, 0, 15}, {40, 56, 3, 0, 
          2, 3, 0, 5}, {19, 3, 10}, {13, 1, 10, 9}, {40, 2, 3, 0, 9, 3, 0, 
          10}, {10, 0, 9}, {16, 9, 0, 2, 10, 9}, {19, 9, 10}, {13, 15, 5, 10, 
          15}, {40, 60, 3, 0, 15, 3, 0, 5}, {40, 56, 3, 0, 0, 3, 0, 15}, {19, 
          15, 10}, {40, 2, 3, 0, 1, 3, 0, 15}, {16, 10, 15, 10}, {40, 2, 3, 0,
           1, 3, 0, 15}, {16, 0, 2, 15, 9}, {40, 2, 3, 0, 3, 3, 0, 15}, {16, 
          0, 2, 15, 14}, {40, 56, 3, 0, 2, 3, 0, 15}, {40, 2, 3, 0, 3, 3, 0, 
          17}, {16, 15, 17, 15}, {19, 15, 17}, {41, 263, 3, 0, 0, 2, 0, 1, 3, 
          0, 15}, {40, 1, 3, 0, 1, 3, 0, 11}, {40, 56, 3, 0, 11, 3, 0, 12}, {
          10, 0, 11}, {40, 60, 3, 0, 11, 3, 0, 7}, {16, 1, 7, 11}, {10, 0, 
          7}, {40, 60, 3, 0, 7, 3, 0, 16}, {16, 3, 16, 7}, {19, 7, 16}, {13, 
          11, 16, 11}, {40, 1, 3, 0, 11, 3, 0, 16}, {40, 56, 3, 0, 16, 3, 0, 
          11}, {16, 15, 2, 12, 11, 15}, {40, 56, 3, 0, 0, 3, 0, 12}, {40, 56, 
          3, 0, 2, 3, 0, 11}, {40, 1, 3, 0, 1, 3, 0, 16}, {10, 0, 7}, {40, 60,
           3, 0, 7, 3, 0, 13}, {16, 1, 13, 7}, {10, 0, 13}, {40, 60, 3, 0, 13,
           3, 0, 18}, {16, 3, 18, 13}, {19, 13, 18}, {13, 7, 18, 7}, {40, 1, 
          3, 0, 7, 3, 0, 18}, {40, 56, 3, 0, 18, 3, 0, 7}, {40, 1, 3, 0, 3, 3,
           0, 18}, {10, 0, 13}, {16, 13, 12, 11, 16, 7, 18, 13}, {19, 13, 
          12}, {41, 263, 3, 0, 2, 2, 0, 1, 3, 0, 13}, {10, 0, 11}, {40, 60, 3,
           0, 11, 3, 0, 16}, {16, 1, 16, 11}, {10, 0, 16}, {40, 60, 3, 0, 16, 
          3, 0, 7}, {16, 3, 7, 16}, {19, 16, 7}, {13, 11, 7, 11}, {40, 1, 3, 
          0, 11, 3, 0, 7}, {40, 56, 3, 0, 7, 3, 0, 11}, {40, 1, 3, 0, 3, 3, 0,
           7}, {40, 56, 3, 0, 7, 3, 0, 16}, {16, 0, 13, 11, 16, 7}, {13, 15, 
          12, 7, 15}, {40, 57, 3, 0, 15, 3, 0, 12}, {10, 0, 15}, {16, 15, 12, 
          15}, {13, 10, 9, 14, 17, 15, 10}, {16, 5, 10, 5}, {40, 18, 3, 0, 5, 
          3, 0, 10}, {34, 1, 4, 8, 4, 6, 10, 3, 1}, {46, 
           
           Function[{$CellContext`r1, $CellContext`th1, $CellContext`r2, \
$CellContext`th2}, 
            DeleteDuplicates[
             
             Select[$CellContext`pts, 
              Abs[-(($CellContext`r1 - $CellContext`r2)/($CellContext`r1 
                   Cos[$CellContext`th1 - #] - $CellContext`r2 
                  Cos[$CellContext`th2 - #])) - 1.] < 10^(-7)& ], Abs[# - #2] < 
             1.*^-7& ]], {$CellContext`pts, 3, 1, 1, Block}, 3, 0, 0, 3, 0, 1,
            3, 0, 2, 3, 0, 3, 3, 1, 4}, {41, 261, 3, 1, 4, 3, 0, 21, 3, 1, 
          5}, {42, "Sort", 3, 1, 5, 3, 1, 4}, {1}}, 
         Function[{$CellContext`r1, $CellContext`th1, $CellContext`r2, \
$CellContext`th2}, 
          
          Block[{$CellContext`pts}, $CellContext`pts = {-
              ArcCos[(1/($CellContext`r1^2 + $CellContext`r2^2 - 
                 2 $CellContext`r1 $CellContext`r2 
                 Cos[$CellContext`th1 - $CellContext`th2])) \
((-$CellContext`r1^2) Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                  Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                  Cos[$CellContext`th2] - $CellContext`r2^2 
                 Cos[$CellContext`th2] - 2 
                 Sqrt[$CellContext`r1^3 $CellContext`r2 
                    Sin[$CellContext`th1]^2 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 - 
                   2 $CellContext`r1^2 $CellContext`r2^2 
                   Sin[$CellContext`th1] 
                   Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                   Sin[$CellContext`th2] + $CellContext`r1 $CellContext`r2^3 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                    Sin[$CellContext`th2]^2])], 
              
              ArcCos[(1/($CellContext`r1^2 + $CellContext`r2^2 - 
                2 $CellContext`r1 $CellContext`r2 
                Cos[$CellContext`th1 - $CellContext`th2])) \
((-$CellContext`r1^2) Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                 Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                 Cos[$CellContext`th2] - $CellContext`r2^2 
                Cos[$CellContext`th2] - 2 
                Sqrt[$CellContext`r1^3 $CellContext`r2 
                   Sin[$CellContext`th1]^2 
                   Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 - 
                  2 $CellContext`r1^2 $CellContext`r2^2 Sin[$CellContext`th1] 
                  Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                  Sin[$CellContext`th2] + $CellContext`r1 $CellContext`r2^3 
                   Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                   Sin[$CellContext`th2]^2])], -
              ArcCos[(1/($CellContext`r1^2 + $CellContext`r2^2 - 
                 2 $CellContext`r1 $CellContext`r2 
                 Cos[$CellContext`th1 - $CellContext`th2])) \
((-$CellContext`r1^2) Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                  Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                  Cos[$CellContext`th2] - $CellContext`r2^2 
                 Cos[$CellContext`th2] + 
                 2 Sqrt[$CellContext`r1^3 $CellContext`r2 
                    Sin[$CellContext`th1]^2 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 - 
                    2 $CellContext`r1^2 $CellContext`r2^2 
                    Sin[$CellContext`th1] 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                    Sin[$CellContext`th2] + $CellContext`r1 $CellContext`r2^3 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                    Sin[$CellContext`th2]^2])], 
              
              ArcCos[(1/($CellContext`r1^2 + $CellContext`r2^2 - 
                2 $CellContext`r1 $CellContext`r2 
                Cos[$CellContext`th1 - $CellContext`th2])) \
((-$CellContext`r1^2) Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                 Cos[$CellContext`th1] + $CellContext`r1 $CellContext`r2 
                 Cos[$CellContext`th2] - $CellContext`r2^2 
                Cos[$CellContext`th2] + 
                2 Sqrt[$CellContext`r1^3 $CellContext`r2 
                    Sin[$CellContext`th1]^2 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 - 
                   2 $CellContext`r1^2 $CellContext`r2^2 
                   Sin[$CellContext`th1] 
                   Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                   Sin[$CellContext`th2] + $CellContext`r1 $CellContext`r2^3 
                    Sin[$CellContext`th1/2 - $CellContext`th2/2]^2 
                    Sin[$CellContext`th2]^2])]}; Sort[
             Mod[
              DeleteDuplicates[
               
               Select[$CellContext`pts, 
                Abs[-(($CellContext`r1 - $CellContext`r2)/($CellContext`r1 
                    Cos[$CellContext`th1 - #] - $CellContext`r2 
                    Cos[$CellContext`th2 - #])) - 1.] < 10^(-7)& ], 
               Abs[# - #2] < 1.*^-7& ], 6.283185307179586]]]], Evaluate, 
         LibraryFunction[
         "/Users/Jacob/Library/Mathematica/ApplicationData/CCompilerDriver/\
BuildFolder/pu174532-71015/compiledFunction1.dylib", 
          "compiledFunction1", {{Real, 0, "Constant"}, {
           Real, 0, "Constant"}, {Real, 0, "Constant"}, {
           Real, 0, "Constant"}}, {
          Real, 1}]], $CellContext`Acceptable\[Omega]Interval[{
          Pattern[$CellContext`r1, 
           Blank[]], 0}, {
          Pattern[$CellContext`r2, 
           Blank[]], Pi}] := 
       Module[{$CellContext`lim, $CellContext`p1, $CellContext`p2, \
$CellContext`eIsLt1, $CellContext`i1, $CellContext`i2}, $CellContext`p1 = 
          1/($CellContext`r1^2 + $CellContext`r2^2 + 
           2 $CellContext`r1 $CellContext`r2); $CellContext`p2 = \
-$CellContext`r1^2 + $CellContext`r2^2; $CellContext`lim = 
          ArcCos[$CellContext`p1 $CellContext`p2]; 
         If[$CellContext`r1 < $CellContext`r2, $CellContext`eIsLt1 = 
            Interval[{-$CellContext`lim, $CellContext`lim}]; $CellContext`i1 = 
            IntervalUnion[
              Interval[{0, Pi/2}], $CellContext`eIsLt1]; $CellContext`i2 = 
            IntervalUnion[
              Interval[{-Pi/2, 0}], $CellContext`eIsLt1]; 
           Null, $CellContext`eIsLt1 = 
            Interval[{$CellContext`lim, 
               2 Pi - $CellContext`lim}]; $CellContext`i1 = IntervalUnion[
              Interval[{Pi/2, Pi}], $CellContext`eIsLt1]; $CellContext`i2 = 
            IntervalUnion[
              Interval[{Pi, 3 (Pi/2)}], $CellContext`eIsLt1]; Null]; {{
           1, $CellContext`i1}, {-1, $CellContext`i2}}], \
$CellContext`Acceptable\[Omega]Interval[{
          Pattern[$CellContext`r1, 
           Blank[]], 0}, {
          Pattern[$CellContext`r2, 
           Blank[]], 
          Pattern[$CellContext`th2, 
           Blank[]]}] := 
       Block[{$CellContext`asymp1, $CellContext`asymps, \
$CellContext`intersect, $CellContext`goesUpAtIntersect, \
$CellContext`condition1, $CellContext`eIs1, $CellContext`ppos, \
$CellContext`i, $CellContext`epos, $CellContext`egt1, $CellContext`elt1, \
$CellContext`hPosOk, $CellContext`hNegOk}, $CellContext`asymp1 = Mod[
            ArcTan[$CellContext`r2 
             Sin[$CellContext`th2], $CellContext`r1 - $CellContext`r2 
             Cos[$CellContext`th2]], 
            Pi]; $CellContext`asymps = {$CellContext`asymp1, \
$CellContext`asymp1 + 
            Pi}; $CellContext`eIs1 = $CellContext`eIs1ep[$CellContext`r1, \
$CellContext`r2, $CellContext`th2]; $CellContext`intersect = $CellContext`th2/
           2.; $CellContext`goesUpAtIntersect = $CellContext`r2 - \
$CellContext`r1 > 0; $CellContext`condition1 = 
          If[Part[$CellContext`asymps, 1] < $CellContext`intersect, 
            If[$CellContext`goesUpAtIntersect, 
             Interval[{$CellContext`intersect, 
               Part[$CellContext`asymps, 2]}], 
             Interval[{
               Part[$CellContext`asymps, 1], $CellContext`intersect}]], 
            If[$CellContext`goesUpAtIntersect, 
             Interval[{$CellContext`intersect, 
               Part[$CellContext`asymps, 1]}], 
             Interval[{
               Part[$CellContext`asymps, 1], $CellContext`intersect + Pi}]]]; 
         If[Part[$CellContext`asymps, 
             1] == $CellContext`intersect, $CellContext`condition1 = Interval[{
              Part[$CellContext`asymps, 1], Part[$CellContext`asymps, 1] + 
              Pi}]]; $CellContext`ppos = 
          IntervalUnion[$CellContext`condition1 - 
            Pi, $CellContext`condition1, $CellContext`condition1 + 
            Pi]; $CellContext`i = \
$CellContext`createIntervalsFromPointsBetweenAsymptotes[$CellContext`eIs1, \
$CellContext`asymps]; $CellContext`egt1 = 
          IntervalUnion[$CellContext`i - 2 Pi, $CellContext`i, $CellContext`i + 
            2 Pi]; $CellContext`i = 
          If[Part[$CellContext`eIs1, 2] - Part[$CellContext`eIs1, 1] < Pi, 
            Interval[{
              Part[$CellContext`eIs1, 1], 
              Part[$CellContext`eIs1, 2]}], 
            Interval[{0, 
              Part[$CellContext`eIs1, 1]}, {
              Part[$CellContext`eIs1, 2], 2 Pi}]]; $CellContext`elt1 = 
          IntervalUnion[$CellContext`i - 2 Pi, $CellContext`i, $CellContext`i + 
            2 Pi]; $CellContext`hPosOk = $CellContext`pt2FollowsPt1ForPoshInt[
           0, $CellContext`th2]; $CellContext`hNegOk = \
$CellContext`pt2FollowsPt1ForNeghInt[0, $CellContext`th2]; {{1, 
            IntervalIntersection[$CellContext`ppos, 
             IntervalUnion[$CellContext`elt1, 
              
              IntervalIntersection[$CellContext`egt1, \
$CellContext`hPosOk]]]}, {-1, 
            IntervalIntersection[$CellContext`ppos, 
             IntervalUnion[$CellContext`elt1, 
              
              IntervalIntersection[$CellContext`egt1, \
$CellContext`hNegOk]]]}}], $CellContext`Acceptable\[Omega]Interval[{
          Pattern[$CellContext`r1, 
           Blank[]], 
          Pattern[$CellContext`th1, 
           Blank[]]}, {
          Pattern[$CellContext`r2, 
           Blank[]], 
          Pattern[$CellContext`th2, 
           Blank[]]}] := 
       Block[{$CellContext`asymp1, $CellContext`asymps, \
$CellContext`intersect, $CellContext`goesUpAtIntersect, \
$CellContext`condition1, $CellContext`eIs1, $CellContext`ppos, \
$CellContext`i, $CellContext`epos, $CellContext`egt1, $CellContext`elt1, \
$CellContext`hPosOk, $CellContext`hNegOk}, $CellContext`asymp1 = Mod[
            
            ArcTan[(-$CellContext`r1) Sin[$CellContext`th1] + $CellContext`r2 
              Sin[$CellContext`th2], $CellContext`r1 
              Cos[$CellContext`th1] - $CellContext`r2 Cos[$CellContext`th2]], 
            Pi]; $CellContext`asymps = {$CellContext`asymp1, \
$CellContext`asymp1 + 
            Pi}; $CellContext`eIs1 = $CellContext`eIs1l[{$CellContext`r1, \
$CellContext`th1}, {$CellContext`r2, $CellContext`th2}]; \
$CellContext`intersect = Mod[
            ArcTan[
            Sin[$CellContext`th2] - Sin[$CellContext`th1], 
             Cos[$CellContext`th1] - Cos[$CellContext`th2]], 
            Pi]; $CellContext`goesUpAtIntersect = ($CellContext`r1 - \
$CellContext`r2) Sin[$CellContext`th1 - $CellContext`th2] > 
           0; $CellContext`condition1 = 
          If[Part[$CellContext`asymps, 1] < $CellContext`intersect, 
            If[$CellContext`goesUpAtIntersect, 
             Interval[{$CellContext`intersect, 
               Part[$CellContext`asymps, 2]}], 
             Interval[{
               Part[$CellContext`asymps, 1], $CellContext`intersect}]], 
            If[$CellContext`goesUpAtIntersect, 
             Interval[{$CellContext`intersect, 
               Part[$CellContext`asymps, 1]}], 
             Interval[{
               Part[$CellContext`asymps, 1], $CellContext`intersect + Pi}]]]; 
         If[Part[$CellContext`asymps, 
             1] == $CellContext`intersect, $CellContext`condition1 = Interval[{
              Part[$CellContext`asymps, 1], Part[$CellContext`asymps, 1] + 
              Pi}]]; $CellContext`ppos = 
          IntervalUnion[$CellContext`condition1 - 
            Pi, $CellContext`condition1, $CellContext`condition1 + 
            Pi]; $CellContext`i = \
$CellContext`createIntervalsFromPointsBetweenAsymptotes[$CellContext`eIs1, \
$CellContext`asymps]; $CellContext`egt1 = 
          IntervalUnion[$CellContext`i - 2 Pi, $CellContext`i, $CellContext`i + 
            2 Pi]; $CellContext`i = 
          If[Part[$CellContext`eIs1, 2] - Part[$CellContext`eIs1, 1] < Pi, 
            Interval[{
              Part[$CellContext`eIs1, 1], 
              Part[$CellContext`eIs1, 2]}], 
            Interval[{0, 
              Part[$CellContext`eIs1, 1]}, {
              Part[$CellContext`eIs1, 2], 2 Pi}]]; $CellContext`elt1 = 
          IntervalUnion[$CellContext`i - 2 Pi, $CellContext`i, $CellContext`i + 
            2 Pi]; $CellContext`hPosOk = \
$CellContext`pt2FollowsPt1ForPoshInt[$CellContext`th1, $CellContext`th2]; \
$CellContext`hNegOk = $CellContext`pt2FollowsPt1ForNeghInt[$CellContext`th1, \
$CellContext`th2]; {{1, 
            IntervalIntersection[$CellContext`ppos, 
             IntervalUnion[$CellContext`elt1, 
              
              IntervalIntersection[$CellContext`egt1, \
$CellContext`hPosOk]]]}, {-1, 
            IntervalIntersection[$CellContext`ppos, 
             IntervalUnion[$CellContext`elt1, 
              
              IntervalIntersection[$CellContext`egt1, \
$CellContext`hNegOk]]]}}], \
$CellContext`createIntervalsFromPointsBetweenAsymptotes[{
          Pattern[$CellContext`p1, 
           Blank[]], 
          Pattern[$CellContext`p2, 
           Blank[]]}, {
          Pattern[$CellContext`a1, 
           Blank[]], 
          Pattern[$CellContext`a2, 
           Blank[]]}] := If[$CellContext`p2 > $CellContext`a2, 
         If[$CellContext`p1 > $CellContext`a2, 
          
          Interval[{$CellContext`a2, $CellContext`p1}, {$CellContext`p2, \
$CellContext`a1 + 2 Pi}], 
          
          Interval[{$CellContext`p1, $CellContext`a1}, {$CellContext`a2, \
$CellContext`p2}]], 
         If[$CellContext`p1 > $CellContext`a1, 
          
          Interval[{$CellContext`a1, $CellContext`p1}, {$CellContext`p2, \
$CellContext`a2}], 
          
          Interval[{$CellContext`p2, $CellContext`a1}, {$CellContext`a2, \
$CellContext`p1 + 2 Pi}]]], $CellContext`pt2FollowsPt1ForPoshInt[0, 
         Pattern[$CellContext`th2, 
          Blank[]]] := 
       Module[{$CellContext`landing1, $CellContext`landing2, \
$CellContext`th1m, $CellContext`th2m, $CellContext`i}, $CellContext`landing2 = \
$CellContext`th2 + Pi; $CellContext`i = 
          Interval[{0, Pi}, {$CellContext`landing2, 2 Pi}]; 
         IntervalUnion[$CellContext`i, $CellContext`i + 
           2 Pi]], $CellContext`pt2FollowsPt1ForPoshInt[
         Pattern[$CellContext`th1, 
          Blank[]], 
         Pattern[$CellContext`th2, 
          Blank[]]] := 
       Module[{$CellContext`landing1, $CellContext`landing2, \
$CellContext`th1m, $CellContext`th2m, $CellContext`i}, $CellContext`th1m = 
          Mod[$CellContext`th1, 2 Pi]; $CellContext`th2m = 
          Mod[$CellContext`th2, 2 Pi]; $CellContext`landing1 = 
          Mod[$CellContext`th1m + Pi, 2 Pi]; $CellContext`landing2 = 
          Mod[$CellContext`th2m + Pi, 2 Pi]; $CellContext`i = 
          If[$CellContext`landing1 < $CellContext`landing2, 
            
            Interval[{
             0, $CellContext`landing1}, {$CellContext`landing2, 2 Pi}], 
            Interval[{$CellContext`landing2, $CellContext`landing1}]]; 
         IntervalUnion[$CellContext`i, $CellContext`i + 
           2 Pi]], $CellContext`pt2FollowsPt1ForNeghInt[0, 
         Pattern[$CellContext`th2, 
          Blank[]]] := 
       Module[{$CellContext`i}, $CellContext`i = 
          Interval[{0, $CellContext`th2}]; 
         IntervalUnion[$CellContext`i - Pi, $CellContext`i + 
           Pi, $CellContext`i + 3 Pi]], $CellContext`pt2FollowsPt1ForNeghInt[
         Pattern[$CellContext`th1, 
          Blank[]], 
         Pattern[$CellContext`th2, 
          Blank[]]] := 
       Module[{$CellContext`i}, $CellContext`i = 
          If[$CellContext`th1 < $CellContext`th2, 
            Interval[{$CellContext`th1, $CellContext`th2}], 
            Interval[{0, $CellContext`th2}, {$CellContext`th1, 2 Pi}]]; 
         IntervalUnion[$CellContext`i - Pi, $CellContext`i + 
           Pi, $CellContext`i + 3 Pi]], $CellContext`getInequalityForPoint[
         Pattern[$CellContext`a, 
          Blank[Interval]], 
         Pattern[$CellContext`p, 
          Blank[]]] := Module[{$CellContext`s}, $CellContext`s = Part[
            Select[
             Table[
              Interval[
               Part[$CellContext`a, $CellContext`i]], {$CellContext`i, 1, 
               Length[$CellContext`a]}], 
             IntervalMemberQ[#, $CellContext`p]& ], 1, 1]; 
         Part[$CellContext`s, 1] < $CellContext`\[Omega] < 
          Part[$CellContext`s, 2]], $CellContext`geneAng[
         Pattern[$CellContext`cart1, 
          Blank[]], 
         Pattern[$CellContext`cart2, 
          Blank[]]] := 
       Module[{$CellContext`M, $CellContext`cartpl1, $CellContext`cartpl2, \
$CellContext`pol1, $CellContext`pol2, $CellContext`r, $CellContext`tdv, \
$CellContext`burn1, $CellContext`burn2, $CellContext`c1, $CellContext`c2}, \
{$CellContext`M, $CellContext`cartpl1, $CellContext`cartpl2} = \
$CellContext`CartesianPlanarsFromCartesians[$CellContext`cart1, \
$CellContext`cart2]; {$CellContext`pol1, $CellContext`pol2} = 
          
          Map[$CellContext`PolarFromCartesianPlanar[#]& , \
{$CellContext`cartpl1, $CellContext`cartpl2}]; $CellContext`r = If[Part[
              $CellContext`pol1["Position"], 1] == Part[
              $CellContext`pol2["Position"], 1], 
            $CellContext`geneAngSameRad[$CellContext`pol1, $CellContext`pol2], 
            $CellContext`geneAngGeneRad[$CellContext`pol1, \
$CellContext`pol2]]; $CellContext`tdv = $CellContext`r[
           "Total \[CapitalDelta]V"]; $CellContext`burn1 = $CellContext`r[
           "Burn 1"]; $CellContext`burn2 = $CellContext`r[
           "Burn 2"]; {$CellContext`cartpl1, $CellContext`cartpl2} = 
          Map[$CellContext`CartesianPlanarFromPolar[#]& , \
{$CellContext`burn1, $CellContext`burn2}]; {$CellContext`c1, $CellContext`c2} = 
          Map[$CellContext`CartesianFromCartesianPlanar[
             
             Inverse[$CellContext`M], #]& , {$CellContext`cartpl1, \
$CellContext`cartpl2}]; Return[
           Association[
           "Total \[CapitalDelta]V" -> $CellContext`tdv, 
            "Burn 1" -> $CellContext`c1, "Burn 2" -> $CellContext`c2]]; 
         Null], $CellContext`nonanalyticTransfer[
         Pattern[$CellContext`o1, 
          Blank[]], 
         Pattern[$CellContext`o2, 
          Blank[]]] := 
       Block[{$CellContext`t, $CellContext`nul1, $CellContext`nuh1, \
$CellContext`nul2, $CellContext`nuh2, $CellContext`minnustep, \
$CellContext`nustep1, $CellContext`nustep2}, $CellContext`minnustep = 
          Pi/12.; {$CellContext`nul1, $CellContext`nuh1} = $CellContext`o1[
           "\[Nu]Range"]; $CellContext`nustep1 = 
          Min[($CellContext`nuh1 - $CellContext`nul1)/
            12., $CellContext`minnustep]; {$CellContext`nul2, \
$CellContext`nuh2} = $CellContext`o2["\[Nu]Range"]; $CellContext`nustep2 = 
          Min[($CellContext`nuh2 - $CellContext`nul2)/
            12., $CellContext`minnustep]; $CellContext`t = Flatten[
            Table[{$CellContext`nu1, $CellContext`nu2, 
              $CellContext`BestTransferTwoPoints[
               $CellContext`CartesianFromKeplerian[
                $CellContext`CoordinateFromOrbit[$CellContext`o1, \
$CellContext`nu1]], 
               $CellContext`CartesianFromKeplerian[
                $CellContext`CoordinateFromOrbit[$CellContext`o2, \
$CellContext`nu2]]]}, {$CellContext`nu1, $CellContext`nul1, $CellContext`nuh1 - \
$CellContext`nustep1/
              10, $CellContext`nustep1}, {$CellContext`nu2, \
$CellContext`nul2, $CellContext`nuh2 - $CellContext`nustep2/
              10, $CellContext`nustep2}], 1]; First[
           
           MinimalBy[$CellContext`t, Part[#, 3][
            "Total \[CapitalDelta]V"]& ]]], $CellContext`ModPiRange[
         Pattern[$CellContext`x, 
          Blank[]]] := Mod[$CellContext`x + Pi, 2 Pi] - Pi}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
},
WindowSize->{957.1800000000001, 864.1700000000001},
Visible->True,
AuthoredSize->{957, 864},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (June 27, \
2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1464, 33, 129404, 2480, 839, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 0uDbTlV4xhQarBgeoQN5Oqwc *)
