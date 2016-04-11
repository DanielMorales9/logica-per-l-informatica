cartprod([], _, []).
cartprod([A|C1],B, Set) :- prod(A, B, S), cartprod(C1, B, R), append(S, R, Set).

prod(_, [], []).
prod(A, [X|Coda], Set):- prod(A, Coda, R),! , append([(A, X)], R, Set).
