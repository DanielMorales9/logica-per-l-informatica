albero(a => [b=>[c => [d,e]], f => [g => [h],i]]).
albero2(a => [b=> [c => [d,e]], m,
f => [g => [h], i,
m=>[n,p,q]]]).

max(X,Y,X) :- X >= Y, !.
max(_,Y,Y).

height(empty, 0).
height(_ => Subtree, N) :-!, max_height(Subtree, X), N is X+1.
height(_, 1).
max_height([], 0).
max_height([X|Tree], N) :- height(X, M), max_height(Tree, S), max(M, S, N).

size(empty, 0).
size(_ => Subtree, N) :- !, max_size(Subtree, X), N is X+1.
size(_, 1).
max_size([], 0).
max_size([X|Tree], N) :- size(X, M), max_size(Tree, S), N is M+S.

label(empty, []).
label(Root => Subtree, [Root|Coda]) :- !, label_list(Subtree, Coda).
label(X, [X]).

label_list([], []).
label_list([X|Tree], N) :- label(X, S), label_list(Tree, R), append(S,R,N).

subtree(M, M, M).
subtree(M => Something, M => Something, M).
subtree(_ => Something, Y, M) :- subtree_list(Something, Y, M).

subtree_list([X|_], Y, M) :- subtree(X, Y, M).
subtree_list([_|Res], Y, M) :- subtree_list(Res, Y, M).
