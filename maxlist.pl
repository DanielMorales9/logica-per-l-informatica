maxinlist([], _).
maxinlist([X|C], N) :- X =< N , maxinlist(C, N).
maxlist(L, N) :- member(N, L) , maxinlist(L, N).
