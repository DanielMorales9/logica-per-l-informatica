insert(X, L, [X|L]):-!.
insert(X, [Y|C1], [Y|C2]):- insert(X, C1, C2).