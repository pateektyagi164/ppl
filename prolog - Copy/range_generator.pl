range_generator(Low,High,X):-
    range_generator_acc(Low,High,[],X).
range_generator_acc(Low,High,Acc,X):-
    Low>High,
    reverse(Acc,X).
range_generator_acc(Low,High,Acc,X):-
    Low=<High,
    Low1 is Low+1,
    range_generator_acc(Low1,High,[Low|Acc],X).