cartprod([], _, []).
cartprod([A|C1],B,[S|R]) :- prod(A, B, S), cartprod(C1, B, R).

prod(_, [], []).
prod(A, [X|Coda], Set):- prod(A, Coda, R),! , append([(A, X)], R, Set).
