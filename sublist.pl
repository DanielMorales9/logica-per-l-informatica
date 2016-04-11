append3(X, Y, Z, L) :- append(X, Y, W), append(W, Z, L).

sublist(S, L) :- append3(_, S, _, L).