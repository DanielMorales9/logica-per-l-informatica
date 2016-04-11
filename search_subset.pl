search_subset([],0,[]).
search_subset([X|C1],N,[X|C2]) :- M is N-X, search_subset(C1,M,C2).
search_subset([_|C1],N,Set) :- search_subset(C1,N, Set).