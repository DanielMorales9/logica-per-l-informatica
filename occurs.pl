occurs(X, X).
occurs(X, [X|_]):- !.
occurs(_, []) :- !, fail.
occurs(X, [_|Coda]):- occurs(X, Coda).