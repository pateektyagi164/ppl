:- use_module(library(clpfd)).

sendmore(Digits) :-
    Digits = [S,E,N,D,M,O,R,Y],

    % domain: digits 0–9
    Digits ins 0..9,

    % all letters must be different
    all_distinct(Digits),

    % leading digits cannot be zero
    S #\= 0,
    M #\= 0,

    % equation: SEND + MORE = MONEY
    1000*S + 100*E + 10*N + D +
    1000*M + 100*O + 10*R + E #=
    10000*M + 1000*O + 100*N + 10*E + Y,

    % solve
    label(Digits).