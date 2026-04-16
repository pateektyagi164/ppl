element_count(_,[],0).
element_count(Element,[Element|T],Count):-
    element_count(Element,T,Count1), 
    Count is Count1+1.
element_count(Element,[_|T],Count):-
    element_count(Element,T,Count).