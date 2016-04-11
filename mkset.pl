mkset([], []).
mkset([X|Coda], Set) :- mkset(Coda, Set), member(X, Set), !.
mkset([X|Coda], Set) :- mkset(Coda, S), append([X], S, Set). 