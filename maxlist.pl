max(X,Y,X) :- X >= Y, !.
max(_,Y,Y).

maxlist([X], X):- !.
maxlist([X|C], N) :- maxlist(C, H), max(X, H, N).

maxlist2([X|C], N) :- ciclo(C, X, N).

ciclo(_, X,X) :- !.
ciclo([Y|Rest], X, N) :- Y>X, ! , ciclo(Rest, Y, N).
ciclo([_|Rest], X, N) :- ciclo(Rest, X, N).