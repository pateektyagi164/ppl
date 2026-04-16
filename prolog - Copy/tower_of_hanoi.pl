% Base case: only one disk
hanoi(1, Source, Destination, _) :-
    write('Move disk 1 from '),
    write(Source),
    write(' to '),
    write(Destination), nl.

% Recursive case
hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    N1 is N - 1,

    % Step 1: move N-1 disks to auxiliary
    hanoi(N1, Source, Auxiliary, Destination),

    % Step 2: move largest disk
    write('Move disk '), write(N),
    write(' from '), write(Source),
    write(' to '), write(Destination), nl,

    % Step 3: move N-1 disks to destination
    hanoi(N1, Auxiliary, Destination, Source).
