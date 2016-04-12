union([], B, B).
union([X|Coda], B, U) :- member(X, B), !, union(Coda, B, U). 
union([X|Coda], B, [X|U]) :- union(Coda, B, U).