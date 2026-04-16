sum(0,0).
sum(N,Result):-
    N1 is N mod 10,
    N2 is N // 10,
    sum(N2,R1),
    Result is R1+N1.
    