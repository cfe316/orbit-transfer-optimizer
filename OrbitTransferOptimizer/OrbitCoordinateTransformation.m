(* ::Package:: *)

(* ::Section:: *)
(* Orbit Coordinate Transformation subpackage: Title and comments *)

(* :Title: OrbitCoordinateTransformation *)
(* :Context: OrbitTransferOptimizer`OrbitCoordinateTransformation` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`OrbitCoordinateTransformation`", {"OrbitTransferOptimizer`Utilities`"}];

Unprotect@"`*";
ClearAll@"`*";

CoordinateFromOrbit::usage = "Transform an Orbit into a Keplerian Coordinate with a specific true anomaly.";
OrbitFromCoordinate::usage = "Transform an Keplerian Coordinate into an Orbit .";

CartesianFromKeplerian::usage = 
"Transform a Keplerian coordinate into a Cartesian coordinate. Does not support parabolic orbits. Assumes that \[Mu] = 1.

Keplerian orbit format:
<|
	\"Coordinate\"->\"Keplerian\",
	\"a\"-> Semi-major axis,
	\"e\"-> Eccentricity,
	\"i\"-> Inclination,
	\"\[CapitalOmega]\"-> Longitude of ascending node,
	\"\[CurlyPi]\"-> Longitude of periapsis,
	\"\[Nu]\"-> True anomaly
|>

Cartesian Coordinate Format:
<|
	\"Coordinate\"->\"Cartesian\",
	\"Position\" -> {X, Y, Z},
	\"Velocity\" -> {vX, vY, vZ}
|>
";

CartesianPlanarsFromCartesians::usage = "Transform a pair of Cartesian (X,Y,Z), (vX,vY,vZ) coordinates into a cartesian-planar coordinate where both of them have z=0, and the first coordinate lies on the x axis. Returns {M, plcart1, plcart2} where M is the transformation matrix that does this coordinate change.

Cartesian coordinate format:
<|
	\"Coordinate\"->\"Cartesian\",
	\"Position\" -> {X, Y, Z},
	\"Velocity\" -> {vX, vY, vZ}
|>

CartesianPlanar coordinate format:
<|
	\"Coordinate\"->\"CartesianPlanar\",
	\"Position\"->{x, y},
	\"Velocity\"->{vx, vy, vz}
|>
";

PolarFromCartesianPlanar::usage = "Transform a CartesianPlanar (x, y), (vx, vy, vz) coordinate into a Polar (r, \[Theta]), (vr, v\[Theta], vz) coordinate.

CartesianPlanar coordinate format:
<|
	\"Coordinate\"->\"CartesianPlanar\",
	\"Position\"->{x, y},
	\"Velocity\"->{vx, vy, vz}
|>

Polar coordinate format:
<|
	\"Coordinate\"->\"Polar\",
	\"Position\"->{r, \[Theta]},
	\"Velocity\"->{vr, v\[Theta], vz}
|>
";

CartesianPlanarFromPolar::usage = "Transform a Polar (r, \[Theta]), (vr, v\[Theta], vz) coordinate into a CartesianPlanar (x, y), (vx, vy, vz) coordinate.

Polar coordinate format:
<|
	\"Coordinate\"->\"Polar\",
	\"Position\"->{r, \[Theta]},
	\"Velocity\"->{vr, v\[Theta], vz},
	(optional) \"VelocityChange\" -> {vr, v\[Theta], vz}
|>

CartesianPlanar coordinate format:
<|
	\"Coordinate\"->\"CartesianPlanar\",
	\"Position\"->{x, y},
	\"Velocity\"->{vx, vy, vz},
	(optional) \"VelocityChange\" -> {vx, vy, vz}
|>
";

CartesianFromCartesianPlanar::usage = "Rotates a CartesianPlanar coordinate into Cartesian via a supplied transformation matrix.

CartesianPlanar coordinate format:
<|
	\"Coordinate\"->\"CartesianPlanar\",
	\"Position\"->{x, y},
	\"Velocity\"->{vx, vy, vz},
	(optional) \"VelocityChange\" -> {vx, vy, vz}
|>

Cartesian Coordinate Format:
<|
	\"Coordinate\"->\"Cartesian\",
	\"Position\" -> {X, Y, Z},
	\"Velocity\" -> {vX, vY, vZ}
	(optional) \"VelocityChange\" -> {vX, vY, vZ}
|>
";

KeplerianFromCartesian::usage = "Given a CartesianPoint...";

PlanarKeplerianFromPolar::usage = "Given a polar coordinate point,

Polar coordinate format:
<|
	\"Coordinate\"->\"Polar\",
	\"Position\"->{r, \[Theta]},
	\"Velocity\"->{vr, v\[Theta], vz},
	(optional) \"VelocityChange\" -> {vr, v\[Theta], vz}
|>

Output Format:
<|	\"Coordinate\" -> \"PlanarKeplerian\",
	\"a\" -> a, (* Could be undefined i.e. if orbit is parabolic *)
	\"e\" -> e,
	\"w\" -> w,
	\"p\" -> p,
	\"\[ScriptCapitalE]\" -> \[ScriptCapitalE] (* energy *)
	\"h\" -> h (* orbital angular momentum: positive if ccw *)
|>
";

ConstrainKeplerian::usage = "Make sure that a Keplerian coordinate has correct and nondegenerate values.";

Begin["Private`"];

CoordinateFromOrbit[o_?(AssociationQ[#] && KeyExistsQ[#,"Orbit"] && #["Orbit"] == "Nondegenerate" &), \[Nu]_] := Block[{kep},
	kep = KeyDrop[o, {"Orbit", "\[Nu]Range"}];
	kep["Coordinate"] = "Keplerian";
	kep["\[Nu]"] = \[Nu];
	kep
]

OrbitFromCoordinate[k_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Keplerian" &)] := Block[{o},
	o = KeyDrop[k, {"Coordinate", "\[Nu]"}];
	o["Orbit"] = "Nondegenerate";
	restrictOrbit[o]
]

(* Based on Bruce Shapiro's code:  http://biomathman.com/pair/orbit.nb *)
CartesianFromKeplerian[kep_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Keplerian" &)] :=
Block[{ a=kep["a"], e=kep["e"], i=kep["i"], Om=kep["\[CapitalOmega]"], \[CurlyPi] = kep["\[CurlyPi]"], w, v=kep["\[Nu]"], IHAT, JHAT, r,X,Y,Z,vX,vY,vZ,\[Mu]=1},
	w = \[CurlyPi] - Om;

	(* IHAT and JHAT are unit vectors in the plane of the orbit: They are not the ihat and jhat vectors in the (X,Y,Z) frame! IHAT points toward perigee; JHAT is normal and in the plane of the orbit
	*)
	IHAT= {
		Cos[Om]*Cos[w] - Sin[Om]*Sin[w]*Cos[i],
		Sin[Om]*Cos[w] + Cos[Om]*Sin[w]*Cos[i],
		Sin[w]*Sin[i]
	};
	JHAT={
		-Cos[Om]*Sin[w] - Sin[Om]*Cos[w]*Cos[i],
		-Sin[Om]*Sin[w] + Cos[Om]*Cos[w]*Cos[i],
		Cos[w]*Sin[i]
	};

	(* a needs to be negative for hyperbolic orbits *)
	r = a * (1 - e^2) / (1 + e Cos[v]);
	{X, Y, Z} = r*Cos[v]*IHAT + r*Sin[v]*JHAT;
	{vX, vY, vZ} = Sqrt[\[Mu]/(a (1 - e^2))]( - Sin[v]*IHAT + (e + Cos[v])*JHAT);

	<|"Coordinate"->"Cartesian", "Position"->{X,Y,Z}, "Velocity" -> {vX, vY, vZ} |>
];

CartesianPlanarsFromCartesians[
	cart1_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Cartesian" &), 
	cart2_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Cartesian" &)] := Module[
	{M, p1, p2, v1, v2, cartpl1, cartpl2, p1Crossp2, orbNorm, prograde},

	{p1, p2} = #["Position"]& /@ {cart1, cart2};
	{v1, v2} = #["Velocity"]& /@ {cart1, cart2};
	p1Crossp2 = (p1 \[Cross] p2);
	M = If[ Chop[Norm[p1Crossp2]] != 0,
		(* Typical case: p1 and p2 are not collinear.
		   Rotate so that p1 and p2 lie in a plane. *)
		Orthogonalize[{p1, p2, p1Crossp2}]
		,
		(* Unusual case: p1 and p2 are lined up radially.
		   Choose a frame of reference where p1 and v1 are in the xy plane. *)
		orbNorm = p1 \[Cross] v1;
		prograde = orbNorm \[Cross] p1;
		Orthogonalize[{p1, prograde, orbNorm}]
	];
	
	{cartpl1, cartpl2} = ConstantArray[<| "Coordinate"->"CartesianPlanar" |>, {2}];

	cartpl1["Position"] = (M.p1)[[1;;2]];
	cartpl2["Position"] = (M.p2)[[1;;2]];

	cartpl1["Velocity"] = M.v1;
	cartpl2["Velocity"] = M.v2;
	
	Return[{M, cartpl1, cartpl2}];
];

PolarFromCartesianPlanar[cartpl_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "CartesianPlanar" &)] := Module[{p, vel, x, y, r, th, vr, vth, vz},
	p   = Append[cartpl["Position"],0]; (* Useful for cross products *)
	vel = cartpl["Velocity"];
	r   = Sqrt[ p[[1]]^2 + p[[2]]^2 ];
	th  = Mod[ArcTan[p[[1]], p[[2]]], 2. Pi];
	vr  = vel.Normalize[p];
	vth = Normalize[{0, 0, 1} \[Cross] p].vel;
	vz  = vel[[3]]; 
	Return[<| "Coordinate"->"Polar", "Position"->{r,th}, "Velocity"->{vr, vth, vz} |>];
];

CartesianPlanarFromPolar[polar_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Polar" &)] :=
Module[{cartpl, r, th, transform, vr, vth, vz, vx, vy},
	cartpl = <| "Coordinate"->"CartesianPlanar" |>;
	{r, th} = polar["Position"];
	(* Define tranform from {r,th} to {x, y} *)
	transform = {{Cos[th], -Sin[th]}, {Sin[th], Cos[th]}}.{#[[1]], #[[2]]} &;
	cartpl["Position"] = {r Cos[th], r Sin[th]}; 

	If[KeyExistsQ[polar, #], 
		{vr, vth, vz}  = polar[#];
		{vx, vy} = transform @ {vr, vth};
		cartpl[#] = {vx, vy, vz}; 
	]& /@ {"Velocity", "VelocityChange"};

	Return[cartpl];
];

CartesianFromCartesianPlanar[M_?MatrixQ, cartpl_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "CartesianPlanar" &)] := Module[{cart},
	cart = <| "Coordinate"->"Cartesian" |>;
	(* Add a zero to convert from {x, y} to {x, y, z} *)
	cart["Position"] = M.(Append[cartpl["Position"],0]);
	If[KeyExistsQ[cartpl,#],(cart[#] = M.cartpl[#])] & /@ {"Velocity", "VelocityChange"};

	Return[cart];
];

PlanarKeplerianFromPolar[pol_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Polar" &)] := Module[
{r, th, vr, vth, vz,
 a, h, p, e, w, \[ScriptCapitalE]},
	{r, th} = pol["Position"];
	{vr, vth, vz} = pol["Velocity"];

	h = r vth;
	\[ScriptCapitalE] = 1/2 (vr^2 + vth^2) - 1/r;
	a = If[\[ScriptCapitalE] == 0, \[Infinity], -1/(2 \[ScriptCapitalE])];
	p = h^2;
	e = Re[Sqrt[1 - p/a]];

	(*get the non-trivial formula for w by inverting
	r=h^2/(1+eCos[th-w]) with some corrections for \
	the direction of the orbit *)
	w = Mod[If[e == 0,
			0,
			If[vr == 0,
				If[(r < a && \[ScriptCapitalE] < 0) || \[ScriptCapitalE] >= 0,
					th,
					Pi + th
				],
				th - Sign[vr]*Sign[vth]*ArcCos[(h^2 - r)/(r e)]
			]
		], 2 Pi];

	If[e == 0, e = Sign[h] $MachineEpsilon];

	<| "Coordinate"->"KeplerianPlanar",
		"p" -> p, "e" -> e,
		"w" -> w, "h" -> h,
		"a" -> a, "\[ScriptCapitalE]" -> \[ScriptCapitalE]
	|>
]

ConstrainKeplerian[kep_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Keplerian" &)] := Module[{outputKep, a,e, vlimit},
	outputKep = <| "Coordinate"->"Keplerian" |>;
	outputKep["i"] = Mod[kep["i"], Pi];
	Map[(outputKep[#] = Mod[kep[#],2 Pi]) &,{"\[CapitalOmega]", "\[CurlyPi]", "\[Nu]"}];

	(* No parabolic orbits. Converting them to an elliptic orbit is my judgement call. Later an error could be implemented instead. *)
	a = kep["a"];
	e = kep["e"];
	If[ e == 1 , e = 1.001; ];
	If[ e > 1,
		(* Hyperbolic orbits have negative a *)
		If[ a > 0, a = -1 a];
		(* Limit v to the correct hyperbola branch. 0.99 is to prevent evaluating at distance \[Infinity] *)
		vLimit = 0.99 ArcCos[-1/e];
		outputKep["\[Nu]"] = Clip[kep["\[Nu]"], {- vLimit, vLimit}];
	]; 
	outputKep["a"] = a;
	outputKep["e"] = e;
	Return[outputKep];
];
(* From 
http://www.mathworks.com/matlabcentral/fileexchange/35455-convert-keplerian-orbital-elements-to-a-state-vector but adapted a bit. *)
KeplerianFromCartesian[cart_?(AssociationQ[#] && KeyExistsQ[#,"Coordinate"] && #["Coordinate"] == "Cartesian" &)] := Module[
 {x, y, z, vx, vy, vz, 
  r, v, rMag, vMag, 
  a, e, i, \[CapitalOmega], \[Omega], M, nu, \[Theta], EA, eMag, 
  p, h, hMag, n, nMag, argLat, truLon, lonPer, zeta},
	{x,y,z} = Chop[cart["Position"]];
	{vx,vy,vz} = Chop[cart["Velocity"]];
	r = {x, y, z};
	v = {vx, vy, vz};
	{rMag, vMag} = Norm[#]& /@ {r, v};

	h = r \[Cross] v;
	hMag = Norm[h];
	n = {0,0,1} \[Cross] h;
	nMag = Norm[n];
	e = (vMag^2 -1/rMag) r - r.v v;
	eMag = Norm[e];
	zeta = vMag^2/2 - 1/rMag;

	a = - 1/(2 zeta);

	i = ArcCos[h[[3]]/hMag];
	\[CapitalOmega] = If[ n[[1]]==0 && n[[2]] == 0, 0, Mod[ArcTan[n[[1]],n[[2]]], 2 Pi]];
	\[Omega] = If[ n.e ==0, 0, ArcCos[n.e /(nMag * eMag)]];
	lonPer = If[e[[1]]==0, 0, ArcCos[ e[[1]]/eMag]];
	nu = If[ e.r == 0, 0, ArcCos[ e.r / (eMag * rMag)]];
	argLat = If[ n.r == 0, 0, ArcCos[ n.r / (nMag * rMag)]];
	truLon = ArcCos[r[[1]] / rMag];

	If[ e[[3]] < 0, \[Omega] = 2 Pi - \[Omega]];
	If[ r.v < 0, nu = 2 Pi - nu];
	If[ e[[2]] < 0, lonPer = 2 Pi - lonPer];
	If[ r[[3]] < 0, argLat = 2 Pi - argLat];
	If[ r[[2]] < 0, truLon = 2 Pi - truLon];

	(* These two lines were added: my definition of omega is more expansive than Darin's.*)
	If[ i == 0., \[Omega] = lonPer]; 
	If[ Abs[i - Pi] < 10^(-10), \[Omega] = 2 Pi - lonPer];
	
	Return[<|"Coordinate"->"Keplerian", "a"->a, "e"->eMag, "i"->i, "\[CapitalOmega]"->\[CapitalOmega], 
		"\[CurlyPi]"->(\[Omega] + \[CapitalOmega]),
		"\[Omega]"-> \[Omega],
		"\[Nu]" -> Re[nu] |>];
]

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
