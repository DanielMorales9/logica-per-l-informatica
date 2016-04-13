/*
	Definire un predicato Prolog take(List,N,Result) che ha successo
	se e solo se Result e' la lista costituita dai primi N elementi di List
	(nello stesso ordine). Se List ha meno di N elementi o se N e' negativo,
	il goal take(List,N,Result) fallisce.
*/
/*
	Definire inoltre un predicato drop(List,N,Result) che ha successo se e solo se Result e' la lista
	costituita dagli elementi di List (nello stesso ordine) che rimangono
	quando sono stati eliminati i primi N elementi. Se List ha meno di N
	elementi o se N e' negativo, il goal drop(List,N,Result) fallisce.
	I predicati definiti sono reversibili? Giustificare la risposta.
*/

take(_, 0, []).
take([X|Rest], N, [X|Coda]) :- N1 is N-1, take(Rest, N1, Coda).

drop(List, N, Res) :- take(List, N, Take), append(Take, Res, List).








