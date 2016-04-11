leaf(t(X, empty, empty), X).
leaf(t(_, Left, _), X) :- leaf(Left, X).
leaf(t(_, _, Right), X) :- leaf(Right, X).