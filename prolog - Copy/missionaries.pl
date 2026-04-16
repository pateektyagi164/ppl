% initial and goal states
solve(Path) :-
    move((3,3,left), (0,0,right), [(3,3,left)], Path).

% goal reached
move(State, State, Visited, Path) :-
    reverse(Visited, Path).

% possible moves
move((M,C,left), Goal, Visited, Path) :-
    take(M1,C1),
    M2 is M - M1,
    C2 is C - C1,
    valid(M2,C2),
    NewState = (M2,C2,right),
    \+ member(NewState, Visited),
    move(NewState, Goal, [NewState|Visited], Path).

move((M,C,right), Goal, Visited, Path) :-
    take(M1,C1),
    M2 is M + M1,
    C2 is C + C1,
    valid(M2,C2),
    NewState = (M2,C2,left),
    \+ member(NewState, Visited),
    move(NewState, Goal, [NewState|Visited], Path).

% possible boat moves (max 2 people)
take(2,0).
take(0,2).
take(1,1).
take(1,0).
take(0,1).

% validity condition
valid(M,C) :-
    M >= 0, M =< 3,
    C >= 0, C =< 3,
    (M >= C ; M = 0),          % left bank safe
    M_right is 3 - M,
    C_right is 3 - C,
    (M_right >= C_right ; M_right = 0).  % right bank safe