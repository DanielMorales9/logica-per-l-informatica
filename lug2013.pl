assocmin(L, E) :- min_list(L, (_, E)).

min((N, E1), (M, _), (N, E1)) :- N =< M.
min((N, _), (M, E2), (M, E2)):- M =< N.

min_list([(N, Y)], (N, Y)).
min_list([(N, Y)|Rest], (H, E)) :- min_list(Rest, (M, U)), min((N, Y), (M, U), (H, E)).