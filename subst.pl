subst(_, _, [],[]).
subst(X, Y, [X|Coda], N) :- subst(X, Y, Coda, R), !, append([Y], R, N).
subst(X, Y, [H|Coda], N) :- subst(X, Y, Coda, R), append([H], R, N).