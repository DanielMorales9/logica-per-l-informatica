del(_,[],[]).
del(X,[X|Coda],Resto) :- del(X, Coda, Resto), !.
del(X, [Y|Coda], Resto) :- del(X,Coda,Rest), !, append([Y], Rest, Resto).