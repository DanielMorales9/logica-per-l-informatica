arc(a,b).
arc(a,e).
arc(b,a).
arc(b,c).
arc(c,c).
arc(c,d).
arc(d,c).
arc(d,b).
arc(e,c).

path(X,Z, Path) :- path_aux(X,Z, Path, []).
path_aux(X,X, [X], V) :- not(member(X, V)).
path_aux(X, Z, [X|Path], L) :- not(member(X, L)), arc(X, H), path_aux(H, Z, Path, [X|L]).