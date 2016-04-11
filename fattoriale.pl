fact(1,1).
fact(X,Y) :- not(X = 0), H is Y/X, M is X-1, fact(M, H).