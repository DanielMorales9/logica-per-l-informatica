del(_,[],[]).
del(X,[X|Coda],Resto) :- del(X, Coda, Resto), !.
del(X, [Y|Coda], [Y|Rest]) :- del(X,Coda,Rest).