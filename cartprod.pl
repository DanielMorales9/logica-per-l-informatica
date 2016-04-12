cartprod([], _, []).
cartprod([A|C],B,Cart) :- prod(A, B, S), cartprod(C, B, R), append(S, R, Cart).

prod(_, [], []):-!.
prod(A, [X|Coda], [(A,X)|R]):- prod(A, Coda, R).