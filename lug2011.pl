/*
Scrivere un predicato minbranch(+Tree,-Branch,-Cost) che ha successo quando
Tree `e un albero binario (rappresentato come descritto sopra) etichettato da interi,
Branch `e una lista che rappresenta un ramo (dalla radice a una foglia) di costo
minimo in Tree (il costo di un ramo `e la somma delle etichette dei nodi che lo compongono)
e Cost `e il costo di Branch. Ad esempio, l’unico ramo di costo minimo
dell’albero illustrato sopra `e rappresentato dalla lista [10,30,2,4,6], e il suo costo `e
52.
*/ 

albero3(t(10, t(20, empty, empty), t(30, empty, empty))).

albero2(t(10, empty, empty)).

albero(
	t(10, t(20, t(50, t(5, empty, empty), t(8, empty, empty)), empty), 
		t(30, t(2, t(3, t(100, empty, empty), empty), t(4, t(6, empty, empty), t(8, empty, empty))), empty))).

minbranch(t(R, empty, empty), [R], R).

minbranch(t(R, Left, empty), [R|Path], Cost) :-
	minbranch(Left,Path, CostX), Cost is CostX + R.
minbranch(t(R, empty, Right), [R|Path], Cost) :-
	minbranch(Right,Path, CostX), Cost is CostX + R.

minbranch(t(R, Left, Right), [R|PathR], Cost) :-
	minbranch(Left,_, CostL), 
	minbranch(Right,PathR, CostR), CostR < CostL, Cost is CostR+R.

minbranch(t(R, Left, Right), [R|PathL], Cost) :-
	minbranch(Left,PathL, CostL), 
	minbranch(Right,_, CostR), CostR >= CostL, Cost is CostL+R.



