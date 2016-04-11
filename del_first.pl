del_first(_, [], _) :- !, fail.
del_first(X, [Y|Coda], Resto) :- del_first(X, Coda, Rest), append([Y], Rest, Resto), !.
del_first(X,[X|Resto],Resto).