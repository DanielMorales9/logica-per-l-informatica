nextto1(X,Y,L) :- append(_, [X], H), append(H, [Y], L).
nextto(X, Y, [X,Y|Coda]).
nextto(X, Y, [_|Coda]) :- nextto(X, Y, Coda).

