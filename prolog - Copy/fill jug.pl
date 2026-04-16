% start solving
solve(Path) :-
    move((0,0), Path, [(0,0)]).

% goal: 2 liters in 4L jug
move((2,_), Path, Path).

% recursive moves
move((X,Y), Path, Visited) :-
    next((X,Y), (X1,Y1)),
    \+ member((X1,Y1), Visited),
    move((X1,Y1), Path, [(X1,Y1)|Visited]).

% possible operations

% fill 4L jug
next((_,Y), (4,Y)).

% fill 3L jug
next((X,_), (X,3)).

% empty 4L jug
next((_,Y), (0,Y)).

% empty 3L jug
next((X,_), (X,0)).

% pour 4L → 3L
next((X,Y), (X1,Y1)) :-
    T is min(X, 3 - Y),
    X1 is X - T,
    Y1 is Y + T.

% pour 3L → 4L
next((X,Y), (X1,Y1)) :-
    T is min(Y, 4 - X),
    X1 is X + T,
    Y1 is Y - T.