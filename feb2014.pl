albero(two(10,one(20,two(50,leaf(5),leaf(8))),
one(30,two(30,one(35,leaf(100)),two(40,leaf(6),leaf(48)))))).

ordered(leaf(X), [X]).
ordered(two(X, L, _), [X|Branch]) :- ordered(L, Branch), append([Y], _, Branch), X=<Y.
ordered(two(X, _, R), [X|Branch]) :- ordered(R, Branch), append([Y], _, Branch), X=<Y.
ordered(one(X, T), [X|Branch]) :- ordered(T, Branch), append([Y],_, Branch), X=<Y.