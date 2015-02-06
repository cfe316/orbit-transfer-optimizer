(* ::Package:: *)

(* ::Section:: *)
(* Acceptable Interval package: Title and comments *)

(* :Title: AcceptableInterval *)
(* :Context: OrbitTransferOptimizer`AcceptableInterval` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)

(* ::Section:: *)
(* Begin package and help *)

BeginPackage["OrbitTransferOptimizer`AcceptableInterval`"];

Unprotect@"`*";
ClearAll@"`*";

Acceptable\[Omega]Interval::usage = "For two points in the plane r1 != r2 and \[Theta]1 != \[Theta]2 and \[Theta]1 != \[Theta]2 + \[Pi], return an Interval corresponding to acceptable values for an orbit's argument of periapsis \[Omega] for an orbit that passes through both these points.

\[Omega] is acceptable if p is positive (orbit is not on the wrong branch of a hyperbola) and if e>1 (it's a hyperbola) then it has to reach 'point 2' after 'point 1'.

Input format:
{r1, \[Theta]1}, {r2, \[Theta]2}: the initial and final points (in polar coordinates) that the orbit goes through.

Output format:
{
	{1, Interval[{...}]},
	{-1, Interval[{...}]},
}

Where the first is the Interval acceptable for if the orbit is counterclockwise (sign of h is +1) and the second is for if the orbit is clockwise (sign of h is -1).
";

eIsPositiveInterval::usage = "Gives the interval of argument of periapsis \[Omega] over which eccentricity e is positive.
Input format:
{r1, \[Theta]1}, {r2, \[Theta]2}: the initial and final points (in polar coordinates) that the orbit goes through.

Output format:
Interval[{...}]
";

Begin["`Private`"];

(* ::Text:: *)
(*helper function that takes an interval (which may have multiple ... spans?) and a point, and returns one part of that interval, as an inequality for \[Omega].*)

getInequalityForPoint[a_Interval,p_] := Module[{s},
	s = Select[ Table[ Interval[ a[[i]]], {i, 1, Length[a]}], IntervalMemberQ[#, p] & ][[1,1]];
	s[[1]] < \[Omega] < s[[2]]
]


(* ::Section:: *)
(*Constraints on what \[Omega] are acceptable to be tested for the lowest \[CapitalDelta]v.*)

(*Returns the two angles of \[Omega] for which e is equal to 1.*)
eIs1l[{r1_,th1_},{r2_,th2_}] := eIs1c[r1,th1,r2,th2];
eIs1c = Compile[{{r1,_Real},{th1,_Real},{r2,_Real},{th2,_Real}},
	Block[{pts},pts = {
		-ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[th1-th2]) (-r1^2 Cos[th1]+r1 r2 Cos[th1]+r1 r2 Cos[th2]-r2^2 Cos[th2]-2 \[Sqrt](r1^3 r2 Sin[th1]^2 Sin[th1/2-th2/2]^2-2 r1^2 r2^2 Sin[th1] Sin[th1/2-th2/2]^2 Sin[th2]+r1 r2^3 Sin[th1/2-th2/2]^2 Sin[th2]^2))],
		ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[th1-th2]) (-r1^2 Cos[th1]+r1 r2 Cos[th1]+r1 r2 Cos[th2]-r2^2 Cos[th2]-2 \[Sqrt](r1^3 r2 Sin[th1]^2 Sin[th1/2-th2/2]^2-2 r1^2 r2^2 Sin[th1] Sin[th1/2-th2/2]^2 Sin[th2]+r1 r2^3 Sin[th1/2-th2/2]^2 Sin[th2]^2))],
		-ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[th1-th2]) (-r1^2 Cos[th1]+r1 r2 Cos[th1]+r1 r2 Cos[th2]-r2^2 Cos[th2]+2 \[Sqrt](r1^3 r2 Sin[th1]^2 Sin[th1/2-th2/2]^2-2 r1^2 r2^2 Sin[th1] Sin[th1/2-th2/2]^2 Sin[th2]+r1 r2^3 Sin[th1/2-th2/2]^2 Sin[th2]^2))],
		ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[th1-th2]) (-r1^2 Cos[th1]+r1 r2 Cos[th1]+r1 r2 Cos[th2]-r2^2 Cos[th2]+2 \[Sqrt](r1^3 r2 Sin[th1]^2 Sin[th1/2-th2/2]^2-2 r1^2 r2^2 Sin[th1] Sin[th1/2-th2/2]^2 Sin[th2]+r1 r2^3 Sin[th1/2-th2/2]^2 Sin[th2]^2))]
	};
	Sort[ Mod[ Select[ pts, Abs[-((r1-r2)/(r1 Cos[th1-#1]-r2 Cos[th2-#1]))-1.] < 1/10^10 &],2 \[Pi]]]],
CompilationTarget->"C",RuntimeOptions->"Speed"];

(*Returns the interval of \[Omega] over which e is positive.*)
eIsPositiveInterval[{r1_, th1_}, {r2_, th2_}] := Block[{asymp1, asymps, eIs1}, 
	asymp1 = Mod[ArcTan[-r1 Sin[th1]+r2 Sin[th2], r1 Cos[th1]-r2 Cos[th2]], \[Pi]];
	asymps = {asymp1, asymp1+\[Pi]};

	eIs1 = eIs1l[{r1, th1}, {r2, th2}];
	If[ eIs1[[1]] > asymps[[1]] && eIs1[[2]] < asymps[[2]],
		Interval[{asymps[[1]],          asymps[[2]]}],
		Interval[{asymps[[2]], 2\[Pi] + asymps[[1]]}]
	]
];

(*Returns the interval of \[Omega] over which p, the semi-latus rectum, is positive. If p is negative, we're on the wrong branch of a hyperbola.*)
pIsPositiveInt[{r1_, th1_}, {r2_, th2_}] := Block[ {asymptote, intersect, derivativeAtIntersectIsPositive, condition1, condition2},
	asymptote = Mod[ArcTan[-r1 Sin[th1]+r2 Sin[th2],r1 Cos[th1]-r2 Cos[th2]],\[Pi]];
	intersect = Mod[ArcTan[Sin[th2]-Sin[th1],Cos[th1]-Cos[th2]],\[Pi]];
	derivativeAtIntersectIsPositive = (r1-r2) Sin[th1-th2] >= 0;
	condition1 = If[asymptote < intersect, 
		If[derivativeAtIntersectIsPositive, 
			Interval[{intersect, asymptote + \[Pi]}], 
			Interval[{asymptote, intersect}]
		], 
		If[derivativeAtIntersectIsPositive,  
			Interval[{intersect, asymptote}], 
			Interval[{asymptote, intersect + \[Pi]}]
		]
	];
	(*needed for th1 and th2 are \[Pi] apart*)
	If[asymptote==intersect,  condition1 = Interval[{asymptote, intersect + \[Pi]}] ];

	{IntervalUnion[condition1-\[Pi], condition1, condition1 + \[Pi]], intersect, asymptote}
];


(*A helper function... given two 'points' between two 'asymptotes', it returns the set of intervals which are between the 'asymptotes' but outside the 'points'.*)
createIntervalsFromPointsBetweenAsymptotes[{p1_, p2_}, {a1_, a2_}] := 
If[ p2 > a2,
	If[ p1 > a2,
		Interval[{a2, p1}, {p2, a1 + 2\[Pi]}],
		Interval[{p1, a1}, {a2, p2}]],
	If[ p1 > a1,
		Interval[{a1, p1}, {p2, a2}],
		Interval[{p2, a1}, {a2, p1 + 2\[Pi]}]
	]
];

(*Returns the interval of \[Omega] over which e is greater than 1, i.e. the orbit is hyperbolic.*)
eIsGt1Int[{r1_, th1_}, {r2_, th2_}]:=Block[{asymp1, asymps, eIs1, i},
	asymp1 = Mod[ArcTan[-r1 Sin[th1]+r2 Sin[th2], r1 Cos[th1]-r2 Cos[th2]], \[Pi]];
	asymps = {asymp1, asymp1+\[Pi]};

	eIs1 = eIs1l[{r1, th1}, {r2, th2}];
	i = createIntervalsFromPointsBetweenAsymptotes[eIs1, asymps];
	IntervalUnion[i-2\[Pi], i, i+2\[Pi]]
];

(*Returns the interval of \[Omega] over which e is less than than 1, i.e. the orbit is elliptical.*)
eIsLt1Int[{r1_, th1_}, {r2_, th2_}] := Block[{asymp1, asymps, eIs1, i}, 
	eIs1 = eIs1l[{r1, th1}, {r2, th2}];
	i = If[eIs1[[2]]-eIs1[[1]] < \[Pi],
		Interval[{eIs1[[1]], eIs1[[2]]}],
		Interval[{0, eIs1[[1]]}, {eIs1[[2]], 2\[Pi]}]
	];
	IntervalUnion[i-2\[Pi],i,i+2\[Pi]]
];

(*Returns the interval over which (for a hyperbolic orbit with positive angular momentum h) the 'Point 2' is reached after 'Point 1'*)
pt2FollowsPt1ForPoshInt[th1_, th2_]:=Module[{landing1, landing2, th1m, th2m, i}, 
	th1m = Mod[th1, 2\[Pi]];
	th2m = Mod[th2, 2\[Pi]];
	landing1 = Mod[th1m+\[Pi], 2\[Pi]];
	landing2 = Mod[th2m+\[Pi], 2\[Pi]];
	i = If[landing1<landing2, 
		Interval[{0, landing1}, {landing2, 2\[Pi]}], 
		Interval[{landing2, landing1}]
	];
	IntervalUnion[i, i+2\[Pi]]
];

(*Same thing but for negative angular momentum hyperbolic orbits*)
pt2FollowsPt1ForNeghInt[th1_, th2_]:=Module[{i}, 
	i = If[th1 < th2,
		Interval[{th1,th2}],
		Interval[{0, th2}, {th1, 2\[Pi]}]
	];
	IntervalUnion[i - \[Pi], i + \[Pi], i + 3\[Pi]]
];

(* ::Section:: *)
(*Combine the various contraints*)

(*\[Omega] is acceptable if p is positive (orbit is not on the wrong branch of a hyperbola) and if e>1 (it's a hyperbola) then it has to reach 'point 2' after 'point 1'.*)
Acceptable\[Omega]Interval[{r1_, th1_}, {r2_, th2_}] := Block[{ppos, epos, egt1, elt1, hPosOk, hNegOk}, 
	ppos = pIsPositiveInt[{r1, th1}, {r2, th2}];
	egt1 = eIsGt1Int[{r1, th1}, {r2, th2}];
	elt1 = eIsLt1Int[{r1, th1}, {r2, th2}];
	hPosOk = pt2FollowsPt1ForPoshInt[th1, th2];
	hNegOk = pt2FollowsPt1ForNeghInt[th1, th2];

	{{1, IntervalIntersection[ppos, IntervalUnion[elt1, IntervalIntersection[egt1, hPosOk]]]}, {-1, IntervalIntersection[ppos, IntervalUnion[elt1, IntervalIntersection[egt1, hNegOk]]]}}
]

(*The same thing but with some de-duplication of effort... might be 50us faster.*)
Acceptable\[Omega]Interval[{r1_, th1_}, {r2_, th2_}] := Block[ {asymp1, asymps, intersect, goesUpAtIntersect, condition1, eIs1, ppos, i, epos, egt1, elt1, hPosOk, hNegOk}, 
	asymp1 = Mod[ArcTan[-r1 Sin[th1]+r2 Sin[th2], r1 Cos[th1]-r2 Cos[th2]], \[Pi]];
	asymps = {asymp1, asymp1+\[Pi]};

	eIs1 = eIs1l[{r1, th1}, {r2, th2}];

	(*get where P is ok*)
	intersect = Mod[ArcTan[Sin[th2]-Sin[th1], Cos[th1]-Cos[th2]], \[Pi]];
	goesUpAtIntersect = (r1-r2)  Sin[th1-th2]>0;
	condition1 = If[ asymps[[1]] < intersect, 
		If[ goesUpAtIntersect, 
			Interval[{intersect, asymps[[2]]}], 
			Interval[{asymps[[1]], intersect}]
		], 
		If[ goesUpAtIntersect, 
			Interval[{intersect, asymps[[1]]}], 
			Interval[{asymps[[1]], intersect+\[Pi]}]
		]
	];
	If[ asymps[[1]]==intersect, condition1 = Interval[{asymps[[1]], asymps[[1]]+\[Pi]}]];
	ppos = IntervalUnion[condition1-\[Pi], condition1, condition1+\[Pi]];

	(*get where e is gt 1*)
	i = createIntervalsFromPointsBetweenAsymptotes[eIs1, asymps];
	egt1 = IntervalUnion[i-2\[Pi], i, i+2\[Pi]];

	(*get where e is lt 1*)
	i = If[ eIs1[[2]]-eIs1[[1]] < \[Pi], 
		Interval[{eIs1[[1]], eIs1[[2]]}], 
		Interval[{0, eIs1[[1]]}, {eIs1[[2]], 2\[Pi]}]
	];
	elt1 = IntervalUnion[i-2\[Pi], i, i+2\[Pi]];

	hPosOk = pt2FollowsPt1ForPoshInt[th1, th2];
	hNegOk = pt2FollowsPt1ForNeghInt[th1, th2];

	{{1, IntervalIntersection[ppos, IntervalUnion[elt1, IntervalIntersection[egt1, hPosOk]]]}, {-1, IntervalIntersection[ppos, IntervalUnion[elt1, IntervalIntersection[egt1, hNegOk]]]}}
]

End[];

(*SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];*)

EndPackage[];
