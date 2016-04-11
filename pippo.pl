/* pippo(L1, L2, L3, L4) = 
		L3 = intersezione L1 e L2
		L4 = L1 meno L2
*/

intersezione([], _, []).
intersezione([X|Rest], L, [X|Result]) :- member(X, L2), !, intersezione(Rest, L, Result);
intersezione([X|Rest], L, Result) :- intersezione(Rest, L, Result).

pippo([X|C], L2, L3, L4) 