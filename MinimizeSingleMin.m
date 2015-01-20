BeginPackage["MinimizeSingleMin`"]

MinimizeSingleMin::usage =
    "Finds the local min of the function between 'low' and 'high' to tolerance 'tol'. Only works if there is one local min in the interval. Output is min and then f(min)."

Begin["`Private`"]

(* The algorithm starts by evaluating f(low), f(high), and two points in
between low and high. It then throws out the highest portions of the
interval. The new interval is 2/3 the size of the old (if the min of
the four points is in the middle) or 1/3 (if the min is on the ends).
Each subsequent iteration, 2 more points are evaluated.*)
(*the 2 in
2 tol is a magic number that I picked because I'm too lazy to do the
math. It works out that the minimum found should be within tol of the
actual min.*)

MinimizeSingleMin[func_, ilow_, ihigh_, tol_] :=
 Block[{low, high, third, twothirds, res, ordering},
  low = ilow; high = ihigh;
  {third, twothirds} = {low + (high - low)/3, high - (high - low)/3};
  (* Evaluate function at all four points to begin with *)
  res = func[#] & /@ {low, third, twothirds, high};
  While[high - low > 2 tol,
   ordering = Ordering[res];
   Switch[ordering[[1]],
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
  Switch[ordering[[1]],
   1, {low, res[[1]]},
   2, {third, res[[2]]},
   3, {twothirds, res[[3]]},
   4, {high, res[[4]]}
   ]
  ]

End[ ]

EndPackage[ ]
