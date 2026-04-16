double_list([],[]).
double_list([H1|T1],[H2|T2]):-
    H2 is H1*H1,
    double_list(T1,T2).