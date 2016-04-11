occurs_in(X, X). 
occurs_in(X, Y) :- occbis(X, Y).

occbis(X, [X|_]).
occbis(X, [_|C]) :- occbis(X, C).