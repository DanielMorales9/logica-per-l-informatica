subst(_, _, [],[]):-!.
subst(X, Y, [X|Coda], [Y|R]) :- !,  subst(X, Y, Coda, R).
subst(X, Y, [H|Coda], [H|R]) :- subst(X, Y, Coda, R).