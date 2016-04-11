%palindroma(X) :- reverse(X,X).

palindroma([]).
palindroma([_]).
palindroma([X|Coda]) :- append(H, [X], Coda), palindroma(H).