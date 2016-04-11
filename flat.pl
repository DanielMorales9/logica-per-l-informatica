flat([],[]).
flat([H|Coda],Y) :- is_list(H),!, flat(H, R), flat(Coda, S), append(R, S, Y). 
flat([H|Coda],Y) :- flat(Coda, R), append([H], R, Y).