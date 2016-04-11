treemem(t(X, _, _), X).
treemem(t(_, Left, _), Y):- treemem(Left, Y).
treemem(t(_, _, Right), Y):- treemem(Right, Y).