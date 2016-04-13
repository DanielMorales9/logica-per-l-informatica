albero(two(10,one(20,two(50,leaf(5),leaf(8))),
one(30,two(2,one(3,leaf(100)),two(4,leaf(6),leaf(8)))))).

branch(leaf(Leaf),Leaf,[Leaf]).
branch(two(X, L, _),Leaf, [X|Branch]) :- branch(L, Leaf, Branch).
branch(two(X, _, R),Leaf, [X|Branch]) :- branch(R, Leaf, Branch).
branch(one(X, T),Leaf, [X|Branch]) :- branch(T, Leaf, Branch).