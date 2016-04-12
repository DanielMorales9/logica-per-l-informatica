mkset([], []).
mkset([X|Coda], Set) :- member(X, Set), !, mkset(Coda, Set).
mkset([X|Coda], [X|S]) :- mkset(Coda, S).