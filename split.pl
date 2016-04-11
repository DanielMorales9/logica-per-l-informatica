pari(X) :- 0 is X mod 2.

split([], [], []).
split([L|C1], [P|C2], C3) :- pari(L) ,!,  L=P, split(C1, C2, C3). 
split([L|C1], C2, [D|C3]) :- not(pari(L)) ,!, L=D, split(C1, C2, C3).