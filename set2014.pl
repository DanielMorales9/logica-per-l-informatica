applica_sost(F & Something,Sost, P & G) :- applica_sost(F, Sost, P),applica_sost(Something, Sost, G), !.
applica_sost(F v Something,Sost,P v G) :- applica_sost(F, Sost, P), applica_sost(Something, Sost, G), !.
applica_sost(F => Something,Sost,P => G) :- applica_sost(F, Sost, P), applica_sost(Something, Sost, G), !.
applica_sost(F, Sost, P):- map(F, Sost, P), !.

map(F, [], F).
map(F, [(F, P)|_], P) :- !.
map(F, [_|Rest], P) :- map(F, Rest, P).