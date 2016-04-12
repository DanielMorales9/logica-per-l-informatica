subset([],_).
subset([X|Tail],Set) :- member(X,Set), subset(Tail,Set), !.