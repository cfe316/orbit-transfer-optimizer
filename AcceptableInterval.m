(* ::Package:: *)

(* ::Text:: *)
(*helper function that takes an interval (which may have multiple ... spans?) and a point, and returns one part of that interval, as an inequality for \[Omega].*)


getInequalityForPoint[a_Interval,p_]:=Module[{s},s=Select[Table[Interval[a[[i]]],{i,1,Length[a]}],IntervalMemberQ[#,p]&][[1,1]];s[[1]]<\[Omega]<s[[2]]]


(* ::Section:: *)
(*Constraints on what \[Omega] are acceptable to be tested for the lowest \[CapitalDelta]v.*)


(* ::Text:: *)
(*Returns the two angles of \[Omega] for which \[Epsilon] is equal to 1.*)


\[Epsilon]Is1l[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=\[Epsilon]Is1c[r1,\[Theta]1,r2,\[Theta]2];\[Epsilon]Is1c=Compile[{{r1,_Real},{\[Theta]1,_Real},{r2,_Real},{\[Theta]2,_Real}},Block[{pts},pts={-ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[\[Theta]1-\[Theta]2]) (-r1^2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]2]-r2^2 Cos[\[Theta]2]-2 \[Sqrt](r1^3 r2 Sin[\[Theta]1]^2 Sin[\[Theta]1/2-\[Theta]2/2]^2-2 r1^2 r2^2 Sin[\[Theta]1] Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]+r1 r2^3 Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]^2))],ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[\[Theta]1-\[Theta]2]) (-r1^2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]2]-r2^2 Cos[\[Theta]2]-2 \[Sqrt](r1^3 r2 Sin[\[Theta]1]^2 Sin[\[Theta]1/2-\[Theta]2/2]^2-2 r1^2 r2^2 Sin[\[Theta]1] Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]+r1 r2^3 Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]^2))],-ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[\[Theta]1-\[Theta]2]) (-r1^2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]2]-r2^2 Cos[\[Theta]2]+2 \[Sqrt](r1^3 r2 Sin[\[Theta]1]^2 Sin[\[Theta]1/2-\[Theta]2/2]^2-2 r1^2 r2^2 Sin[\[Theta]1] Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]+r1 r2^3 Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]^2))],ArcCos[1/(r1^2+r2^2-2 r1 r2 Cos[\[Theta]1-\[Theta]2]) (-r1^2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]1]+r1 r2 Cos[\[Theta]2]-r2^2 Cos[\[Theta]2]+2 \[Sqrt](r1^3 r2 Sin[\[Theta]1]^2 Sin[\[Theta]1/2-\[Theta]2/2]^2-2 r1^2 r2^2 Sin[\[Theta]1] Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]+r1 r2^3 Sin[\[Theta]1/2-\[Theta]2/2]^2 Sin[\[Theta]2]^2))]};Sort[Mod[Select[pts,Abs[-((r1-r2)/(r1 Cos[\[Theta]1-#1]-r2 Cos[\[Theta]2-#1]))-1.]<1/10^10&],2 \[Pi]]]],CompilationTarget->"C",RuntimeOptions->"Speed"];


(* ::Text:: *)
(*Returns the interval of \[Omega] over which \[Epsilon] is positive.*)


\[Epsilon]IsPositiveInt[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=Block[{asymp1,asymps,\[Epsilon]Is1},
asymp1=Mod[ArcTan[-r1 Sin[\[Theta]1]+r2 Sin[\[Theta]2],r1 Cos[\[Theta]1]-r2 Cos[\[Theta]2]],\[Pi]];
asymps={asymp1,asymp1+\[Pi]};

\[Epsilon]Is1=\[Epsilon]Is1l[{r1,\[Theta]1},{r2,\[Theta]2}];
If[\[Epsilon]Is1[[1]]>asymps[[1]]&&\[Epsilon]Is1[[2]]<asymps[[2]],
Interval[{asymps[[1]],asymps[[2]]}],
Interval[{asymps[[2]],2\[Pi]+asymps[[1]]}]
]
];


(* ::Text:: *)
(*Returns the interval of \[Omega] over which p, the semi-latus rectum, is positive. If p is negative, we're on the wrong branch of a hyperbola.*)


pIsPositiveInt[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=Block[{asymptote,intersect,derivativeAtIntersectIsPositive,condition1,condition2},
asymptote=Mod[ArcTan[-r1 Sin[\[Theta]1]+r2 Sin[\[Theta]2],r1 Cos[\[Theta]1]-r2 Cos[\[Theta]2]],\[Pi]];
intersect=Mod[ArcTan[Sin[\[Theta]2]-Sin[\[Theta]1],Cos[\[Theta]1]-Cos[\[Theta]2]],\[Pi]];
derivativeAtIntersectIsPositive=(r1-r2)  Sin[\[Theta]1-\[Theta]2]>=0;
condition1=If[asymptote<intersect,
If[derivativeAtIntersectIsPositive,
Interval[{intersect,asymptote+\[Pi]}],
Interval[{asymptote,intersect}]
],
If[derivativeAtIntersectIsPositive,
Interval[{intersect,asymptote}],
Interval[{asymptote,intersect+\[Pi]}]
]
];
(*needed for \[Theta]1 and \[Theta]2 are \[Pi] apart*)
If[asymptote==intersect,condition1=Interval[{asymptote,intersect+\[Pi]}]];
{IntervalUnion[condition1-\[Pi],condition1,condition1+\[Pi]],intersect,asymptote}
];


(* ::Text:: *)
(*A helper function... given two 'points' between two 'asymptotes', it returns the set of intervals which are between the 'asymptotes' but outside the 'points'.*)

createIntervalsFromPointsBetweenAsymptotes[p_,a_] := 
If[ p[[2]] > a[[2]],
	If[ p[[1]] > a[[2]],
		Interval[{ a[[2]], p[[1]] }, { p[[2]], a[[1]]+2\[Pi] }],
		Interval[{ p[[1]], a[[1]] }, { a[[2]], p[[2]] }]],
	If[ p[[1]] > a[[1]],
		Interval[ {a[[1]] ,p[[1]] }, { p[[2]], a[[2]] }],
		Interval[ {p[[2]] ,a[[1]] }, { a[[2]], p[[1]]+2\[Pi] }]
	]
];


(* ::Text:: *)
(*Returns the interval of \[Omega] over which \[Epsilon] is greater than 1, i.e. the orbit is hyperbolic.*)

\[Epsilon]IsGt1Int[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=Block[{asymp1,asymps,\[Epsilon]Is1,i},
asymp1=Mod[ArcTan[-r1 Sin[\[Theta]1]+r2 Sin[\[Theta]2],r1 Cos[\[Theta]1]-r2 Cos[\[Theta]2]],\[Pi]];
asymps={asymp1,asymp1+\[Pi]};

\[Epsilon]Is1=\[Epsilon]Is1l[{r1,\[Theta]1},{r2,\[Theta]2}];
i=createIntervalsFromPointsBetweenAsymptotes[\[Epsilon]Is1,asymps];
IntervalUnion[i-2\[Pi],i,i+2\[Pi]]
];

(* ::Text:: *)
(*Returns the interval of \[Omega] over which \[Epsilon] is less than than 1, i.e. the orbit is elliptical.*)

\[Epsilon]IsLt1Int[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=Block[{asymp1,asymps,\[Epsilon]Is1,i},
\[Epsilon]Is1=\[Epsilon]Is1l[{r1,\[Theta]1},{r2,\[Theta]2}];
i=If[\[Epsilon]Is1[[2]]-\[Epsilon]Is1[[1]]<\[Pi],
Interval[{\[Epsilon]Is1[[1]],\[Epsilon]Is1[[2]]}],
Interval[{0,\[Epsilon]Is1[[1]]},{\[Epsilon]Is1[[2]],2\[Pi]}]
];
IntervalUnion[i-2\[Pi],i,i+2\[Pi]]
];

(* ::Text:: *)
(*Returns the interval over which (for a hyperbolic orbit with positive angular momentum h) the 'Point 2' is reached after 'Point 1'*)

pt2FollowsPt1ForPoshInt[\[Theta]1_,\[Theta]2_]:=Module[{landing1,landing2,\[Theta]1m,\[Theta]2m,i},
\[Theta]1m=Mod[\[Theta]1,2\[Pi]];
\[Theta]2m=Mod[\[Theta]2,2\[Pi]];
landing1=Mod[\[Theta]1m+\[Pi],2\[Pi]];
landing2=Mod[\[Theta]2m+\[Pi],2\[Pi]];
i=If[landing1<landing2,
Interval[{0,landing1},{landing2,2\[Pi]}],
Interval[{landing2,landing1}]
];
IntervalUnion[i,i+2\[Pi]]
];

(* ::Text:: *)
(*Same thing but for negative angular momentum hyperbolic orbits*)

pt2FollowsPt1ForNeghInt[\[Theta]1_,\[Theta]2_]:=Module[{i},
i=If[\[Theta]1<\[Theta]2,
Interval[{\[Theta]1,\[Theta]2}],
Interval[{0,\[Theta]2},{\[Theta]1,2\[Pi]}]
];
IntervalUnion[i-\[Pi],i+\[Pi],i+3\[Pi]]
];

(* ::Section:: *)
(*Combine the various contraints*)

(* ::Text:: *)
(*\[Omega] is acceptable if p is positive (orbit is not on the wrong branch of a hyperbola) and if \[Epsilon]>1 (it's a hyperbola) then it has to reach 'point 2' after 'point 1'.*)

(*The more concise version*)
\[Omega]AcceptableInts[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=Block[{ppos,\[Epsilon]pos,\[Epsilon]gt1,\[Epsilon]lt1,hPosOk,hNegOk},
ppos=pIsPositiveInt[{r1,\[Theta]1},{r2,\[Theta]2}];
\[Epsilon]gt1=\[Epsilon]IsGt1Int[{r1,\[Theta]1},{r2,\[Theta]2}];
\[Epsilon]lt1=\[Epsilon]IsLt1Int[{r1,\[Theta]1},{r2,\[Theta]2}];
hPosOk=pt2FollowsPt1ForPoshInt[\[Theta]1,\[Theta]2];
hNegOk=pt2FollowsPt1ForNeghInt[\[Theta]1,\[Theta]2];

{{1,IntervalIntersection[ppos,IntervalUnion[\[Epsilon]lt1,IntervalIntersection[\[Epsilon]gt1,hPosOk]]]},{-1,IntervalIntersection[ppos,IntervalUnion[\[Epsilon]lt1,IntervalIntersection[\[Epsilon]gt1,hNegOk]]]}}
]
(*The same thing but with some de-duplication of effort... might be 50us faster.*)
\[Omega]AcceptableInts[{r1_,\[Theta]1_},{r2_,\[Theta]2_}]:=Block[{asymp1,asymps,intersect,goesUpAtIntersect,condition1,\[Epsilon]Is1,ppos,i,\[Epsilon]pos,\[Epsilon]gt1,\[Epsilon]lt1,hPosOk,hNegOk},
asymp1=Mod[ArcTan[-r1 Sin[\[Theta]1]+r2 Sin[\[Theta]2],r1 Cos[\[Theta]1]-r2 Cos[\[Theta]2]],\[Pi]];
asymps={asymp1,asymp1+\[Pi]};

\[Epsilon]Is1=\[Epsilon]Is1l[{r1,\[Theta]1},{r2,\[Theta]2}];

(*get where P is ok*)
intersect=Mod[ArcTan[Sin[\[Theta]2]-Sin[\[Theta]1],Cos[\[Theta]1]-Cos[\[Theta]2]],\[Pi]];
goesUpAtIntersect=(r1-r2)  Sin[\[Theta]1-\[Theta]2]>0;
condition1=If[asymps[[1]]<intersect,
If[goesUpAtIntersect,
Interval[{intersect,asymps[[2]]}],
Interval[{asymps[[1]],intersect}]
],
If[goesUpAtIntersect,
Interval[{intersect,asymps[[1]]}],
Interval[{asymps[[1]],intersect+\[Pi]}]
]
];
If[asymps[[1]]==intersect,condition1=Interval[{asymps[[1]],asymps[[1]]+\[Pi]}]];
ppos=IntervalUnion[condition1-\[Pi],condition1,condition1+\[Pi]];

(*get where \[Epsilon] is gt 1*)
i=createIntervalsFromPointsBetweenAsymptotes[\[Epsilon]Is1,asymps];
\[Epsilon]gt1=IntervalUnion[i-2\[Pi],i,i+2\[Pi]];

(*get where \[Epsilon] is lt 1*)
i=If[\[Epsilon]Is1[[2]]-\[Epsilon]Is1[[1]]<\[Pi],
Interval[{\[Epsilon]Is1[[1]],\[Epsilon]Is1[[2]]}],
Interval[{0,\[Epsilon]Is1[[1]]},{\[Epsilon]Is1[[2]],2\[Pi]}]
];
\[Epsilon]lt1=IntervalUnion[i-2\[Pi],i,i+2\[Pi]];

hPosOk=pt2FollowsPt1ForPoshInt[\[Theta]1,\[Theta]2];
hNegOk=pt2FollowsPt1ForNeghInt[\[Theta]1,\[Theta]2];

{{1,IntervalIntersection[ppos,IntervalUnion[\[Epsilon]lt1,IntervalIntersection[\[Epsilon]gt1,hPosOk]]]},{-1,IntervalIntersection[ppos,IntervalUnion[\[Epsilon]lt1,IntervalIntersection[\[Epsilon]gt1,hNegOk]]]}}
]


(* ::Input:: *)
(*Manipulate[{Timing[\[Omega]AcceptableInts[{r1,\[Theta]1},{r2,\[Theta]2}]],Show[OrbitPlot[p[r1,\[Theta]1,r2,\[Theta]2,\[Omega]],\[Epsilon][r1,\[Theta]1,r2,\[Theta]2,\[Omega]],\[Omega]],ListPolarPlot[{{{\[Theta]1,r1}},{{\[Theta]2,r2}}},PlotStyle->{Green,Red}]]},{{r1,1},0.1,4},{\[Theta]1,.1,2\[Pi]},{{r2,4},0.1,4},{{\[Theta]2,1.},0,2\[Pi]},{{vr1,0},-4,4},{{v\[Theta]1,1},-4,4},{{vr2,0},-4,4},{{v\[Theta]2,.3},-4,4},{\[Omega],0,2\[Pi]}]*)



