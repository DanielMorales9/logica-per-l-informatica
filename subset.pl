subset([],_).
subset([X|Tail],Set) :- member(X,Set), delete(Set, X, NewSet), subset(Tail,NewSet).