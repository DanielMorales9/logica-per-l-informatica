pari(X) :- 0 is X mod 2.

split([], [], []).
split([X|C1], [X|C2], C3) :- pari(X), !, split(C1, C2, C3). 
split([X|C1], C2, [X|C3]) :- split(C1, C2, C3).