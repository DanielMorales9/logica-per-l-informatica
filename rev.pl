rev([], []).
rev([Y|Coda], L) :- append(H,Y,L), rev(Coda, H).