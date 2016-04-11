insert(X, L1, L2):- append([X], L1, L2).
insert(X, [Y|C1], [Y|C2]):- insert(X, C1, C2).