conta(_, [], 0):- !.
conta(X, [X|Lista], N) :- !, conta(X, Lista, N1), N is N1+1.
conta(X, [_|Lista], N) :- conta(X, Lista, N).

conta([],[]).
conta([X|Coda],Result) :- conta_el(X,[X|Coda],N), append([X,N],[],Lista), delete(Coda,X,Coda2), conta(Coda2,Result2), append(Lista,Result2,Result),!.
conta([T|Coda],Result):- conta(Coda,Result).