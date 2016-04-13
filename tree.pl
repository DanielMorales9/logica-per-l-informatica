 max(X, Y, X):- X >= Y, !.
 max(_, Y, Y).

bin_height(t(_, empty, empty), 1) :- !.
bin_height(t(_, empty, Right), N) :- !, bin_height(Right, H), N is H+1.
bin_height(t(_, Left, empty), N) :- !, bin_height(Left, H), N is H+1.
bin_height(t(_,Left, Right),N):- bin_height(Left, S),bin_height(Right, R),  max(S, R, H), N is H+1.

 reflect(t(X, empty, empty), t(X, empty, empty)).
 reflect(t(X, Left, Right), t(X, Right, Left)).

 bin_size(empty, 0).
 bin_size(t(_, L, R), N) :- bin_size(R, T), bin_size(L, H), N is T+H+1.

/* bin_label(+T, +L) 
 bin_label(empty, _).
 bin_label(t(X, empty, empty), [X|_]):- !.
 bin_label(t(_, empty, empty), [_|C]):- bin_label(t(_, empty, empty), C).
 bin_label(t(X, Left, Right), [X|C]) :-!, bin_label(Left, C), bin_label(Right, C), !.
 bin_label(T, [_|C]) :- bin_label(T, C).
 */

/* bin_label(+T, -L) */
 bin_label(empty, []).
 bin_label(t(X, Left, Right), [X|C]) :- bin_label(Left, S), bin_label(Right, D), append(S,D,C).

/* balanced(+T) */
balanced(empty).
balanced(t(_,L, R)) :- bin_height(L, S), bin_height(R, D), Z is abs(S-D), Z=<1, balanced(L), balanced(R).

/* branch(+T,?Leaf,?Path) */
branch(t(Leaf,empty, empty), Leaf, [Leaf]).
branch(t(X,L, _), Leaf, [X|C]) :- branch(L, Leaf, C).
branch(t(X,_, R), Leaf, [X|C]) :- branch(R, Leaf, C).
