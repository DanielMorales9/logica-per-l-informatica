arc(1,a,2).
arc(3,b,5).
arc(5,c,4).
arc(1,b,3).   
arc(1,c,4).   
arc(2,a,6).
arc(3,c,5).   
arc(4,b,1).   
arc(4,c,6).
arc(6,b,5).

actions(Start, Goal, Arcs) :- aux(Start, Goal, Arcs, [Start]).

aux(Goal, Goal, [], _).
aux(Start, Goal, [Arc|Arcs], Chiusa) :- 
		arc(Start, Arc ,X), 
		not(member(X, Chiusa)), 
		aux(X, Goal, Arcs, [X|Chiusa]).
