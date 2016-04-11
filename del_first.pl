del_first(_, [], _) :- !, fail.
del_first(X,[X|Resto],Resto):- !.
del_first(X, [Y|C], [Y|Resto]) :- del_first(X, C, Resto).