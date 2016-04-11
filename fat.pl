fattr(0,1).
fattr(X,Y) :- fattr(N,M), N is X-1, M is Y/X.