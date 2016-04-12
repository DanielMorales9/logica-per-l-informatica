rev([], []).
rev([Y|Coda], L) :- rev(Coda, H), append(H, [Y], L).