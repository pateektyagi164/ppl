last_element([X], X).
last_element([_|T], Last) :-
    last_element(T, Last).