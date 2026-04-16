range(Low, High, [Low]) :-
    Low =:= High.

range(Low, High, [Low|Rest]) :-
    Low < High,
    Next is Low + 1,
    range(Next, High, Rest).