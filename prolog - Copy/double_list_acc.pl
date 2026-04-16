double_list(List,Result):-
    double_list_acc(List,[],Result).
double_list_acc([],Acc,Result):-
    reverse(Acc,Result).
double_list_acc([H|T],Acc,Result):-
    H1 is H*H,
    double_list_acc(T,[H1|Acc],Result).