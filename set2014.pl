applica_sost(F & Something,Sost, P & G) :- applica_sost(F, Sost, P),applica_sost(Something, Sost, G), !.
applica_sost(F v Something,Sost,P v G) :- applica_sost(F, Sost, P), applica_sost(Something, Sost, G), !.
applica_sost(F => Something,Sost,P => G) :- applica_sost(F, Sost, P), applica_sost(Something, Sost, G), !.
applica_sost(F, Sost, P):- member((F, P), Sost), !.
applica_sost(F, _, F).