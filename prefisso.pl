prefisso([],_).
prefisso([X|Coda], [X|L]) :- prefisso(Coda, L).