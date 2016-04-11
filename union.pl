union([], B, B).
union([X|Coda], B, U) :- union(Coda, B, U), member(X, B), !. 
union([X|Coda], B, U) :- union(Coda, B, N), append([X], N, U).