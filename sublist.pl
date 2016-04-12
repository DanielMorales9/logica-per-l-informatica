append3(X, Y, Z, L) :- append(X, Y, W), append(W, Z, L).

sublist(S, L) :- append(_, S, _, L).