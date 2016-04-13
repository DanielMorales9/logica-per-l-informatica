del_first(X, [X|L], L) :- !.
del_first(X, [Y|L], [Y|Resto]) :- del_first(X, L, Resto).