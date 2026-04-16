% main predicate
knight_tour(N, Tour) :-
    move(N, [(1,1)], Tour).

% when all squares are visited
move(N, Visited, Visited) :-
    length(Visited, L),
    L =:= N * N.

% recursive move
move(N, [(X,Y)|Rest], Tour) :-
    knight_move(X, Y, NX, NY),
    NX >= 1, NX =< N,
    NY >= 1, NY =< N,
    \+ member((NX,NY), [(X,Y)|Rest]),   % not already visited
    move(N, [(NX,NY),(X,Y)|Rest], Tour).

% all possible knight moves
knight_move(X,Y,NX,NY) :-
    (NX is X+2, NY is Y+1);
    (NX is X+2, NY is Y-1);
    (NX is X-2, NY is Y+1);
    (NX is X-2, NY is Y-1);
    (NX is X+1, NY is Y+2);
    (NX is X+1, NY is Y-2);
    (NX is X-1, NY is Y+2);
    (NX is X-1, NY is Y-2).