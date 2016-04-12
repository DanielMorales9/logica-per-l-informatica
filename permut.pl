insert(X, L, [X|L]).
insert(X, [Y|C1], [Y|C2]):- insert(X, C1, C2).

permut([], []).
permut([X|C], L) :- permut(C, P), insert(X, P, L).