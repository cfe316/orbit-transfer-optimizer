(* ::Package:: *)

(* ::Section:: *)
(* Minimize Unimodal Function package: Title and comments *)


(* :Title: MinimizeUnimodalFunction *)
(* :Context: MinimizeUnimodalFunction` *)
(* :Author: Jacob Schwartz (thesquarerootofjacob@gmail.com) *)


(* ::Section:: *)
(* Begin package and help *)


BeginPackage["MinimizeUnimodalFunction`"];

Unprotect@"`*";
ClearAll@"`*";

MinimizeUnimodalFunction::usage = 
	"Finds the local min of the function between 'low' and 'high' 
	to tolerance 'tol'. Only works if there is one local min in
	the interval. Output is min and then f(min).";
GoldenRatioSearchExact::usage = 
	"The same thing as MinimizeUnimodalFunction except it uses precise values of phi"

DualParallelMinimizeUnimodalFunction::usage =
	"Finds the local min of a function between the 'low' and 'high'
	to within a width of 'tol'. Only works if these is one local min in
	the interval.
	Output is min and then f(min).";

Begin["`Private`"];

MinimizeUnimodalFunction[func_, ilow_, ihigh_, tol_] := 
	GoldenRatioSearch[func, ilow, ihigh, tol]

(* The algorithm starts by evaluating f(low), f(high), and two points in
between low and high. It then throws out the highest portions of the
interval. The new interval is 2/3 the size of the old (if the min of
the four points is in the middle) or 1/3 (if the min is on the ends).
Each subsequent iteration, 2 more points are evaluated.*)
(*the 2 in
2 tol is a magic number that I picked because I'm too lazy to do the
math. It works out that the minimum found should be within tol of the
actual min.*)

TernarySearch[func_, ilow_, ihigh_, tol_] :=
	Block[{low, high, third, twothirds, res, ordering},
	low = N[ilow]; high = N[ihigh];
	{third, twothirds} = {low + (high - low)/3, high - (high - low)/3};
	(* Evaluate function at all four points to begin with *)
	res = func[#] & /@ {low, third, twothirds, high};
	While[high - low > 2.5 tol,
		ordering = Ordering[res,1][[1]];
		Switch[ordering,
			1,
			high = third;
			res[[4]] = res[[2]];,
			2,
			high = twothirds;
			res[[4]] = res[[3]];,
			3,
			low = third;
			res[[1]] = res[[2]];,
			4,
			low = twothirds;
			res[[1]] = res[[3]];
		];
		{third, twothirds} = {low + (high - low)/3, high - (high - low)/3};
		(* Re-evaluate the function at the new middle points
		since the interval has shrunk. *)
		res[[2 ;; 3]] = func[#] & /@ {third, twothirds};
	];
	Switch[ordering,
		1, {low, res[[1]]},
		2, {third, res[[2]]},
		3, {twothirds, res[[3]]},
		4, {high, res[[4]]}
	]
]

(* This Golden Ratio search has been adapted from http://mathfaculty.fullerton.edu/mathews/n2003/GoldenRatioSearchMod.html *)
(* This is about 1.5 times faster than the Ternary Search *)
GoldenRatioSearch[func_, ilow_, ihigh_, tol_] :=
	Block[{ low = N[ilow], high = N[ihigh], c, d, h, r1, r2, Ya, Yb, Yc, Yd, p, Yp},
	r1 = (Sqrt[5.] - 1.)/2.;
	r2 = r1^2;
	h = high - low;
	Yb = func[high];
	Ya = func[low];
	c = low + r2 h;
	d = low + r1 h;
	Yc = func[c];
	Yd = func[d];
	While[ h > tol,
		If[ Yc < Yd,
			high = d;
			Yb = Yd;
			d = c;
			Yd = Yc;
			h = high - low;
			c = low + r2 h;
			Yc = func[c];
			,
			low = c;
			Ya = Yc;
			c = d;
			Yc = Yd;
			h = high - low;
			d = low + r1 h;
			Yd = func[d];
		];
	];
	p = low;
	Yp = Ya;
	If [ Yb < Ya, p=high; Yp=Yb];
	{p,Yp}
]

initialPattern[n_] := Array[# / (n + 1) &, n]
standardPattern[n_?EvenQ] := Drop[initialPattern[n + 1], {Ceiling[(n + 1)/2]}]

(* This method is a generalization of GoldenRatioSearch for two parallel
function evaluations.*)
DualParallelMinimizeUnimodalFunction[func_, ilow_, ihigh_, tol_] :=
	Block[{n, low, high, h, p, ipts, lowestindex, allpts, center, newpts},
	n = 2;
	h = ihigh - ilow;
	{low, high} = ParallelMap[{#, func[#]} &, {ilow,ihigh}];
	ipts = ParallelMap[{#, func[#]} & ,low[[1]] + h * initialPattern[n]];
	lowestindex = Ordering[ipts[[All,2]]][[1]];
	allpts = Sort[Join[{low},{high},ipts]];
	{low, center, high} = Take[allpts,{lowestindex,lowestindex+2}];
	h = high[[1]] - low[[1]];
	While[ h > tol,
		newpts = ParallelMap[{#, func[#]} &, low[[1]] + h * standardPattern[n]];
		pts = Sort[{center}~Join~newpts];
		lowestindex = Ordering[pts[[All,2]]][[1]];
		allpts = Join[{low},pts,{high}];
		{low, center, high} = Take[allpts,{lowestindex,lowestindex+2}];
		h = high[[1]] - low[[1]];
	];
	p = low;
	If [high[[2]] < low[[2]], p = high];
	p
]

GoldenRatioSearchExact[func_, ilow_, ihigh_, tol_] :=
	Block[{ low = ilow, high = ihigh, c, d, h, r1, r2, Ya, Yb, Yc, Yd, p, Yp},
	r1 = N[(Sqrt[5] - 1)/2,100];
	r2 = r1^2;
	h = high - low;
	Yb = func[high];
	Ya = func[low];
	c = low + r2 h;
	d = low + r1 h;
	Yc = func[c];
	Yd = func[d];
	While[ h > tol,
		If[ Yc < Yd,
			high = d;
			Yb = Yd;
			d = c;
			Yd = Yc;
			h = high - low;
			c = low + r2 h;
			Yc = func[c];
			,
			low = c;
			Ya = Yc;
			c = d;
			Yc = Yd;
			h = high - low;
			d = low + r1 h;
			Yd = func[d];
		];
	];
	p = low;
	Yp = Ya;
	If [ Yb < Ya, p=high; Yp=Yb];
	{p,Yp}
]

End[ ];

SetAttributes[#, {Protected,ReadProtected}]& /@ Names["`*"];

EndPackage[ ];
