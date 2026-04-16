% 1. Define the domain: the 4 available colors
color(red).
color(green).
color(blue).
color(yellow).

% 2. Define the main rule and the variables for each state/territory
% WA = Western Australia, NT = Northern Territory, SA = South Australia,
% Q = Queensland, NSW = New South Wales, V = Victoria, T = Tasmania.
color_australia(WA, NT, SA, Q, NSW, V, T) :-
    % Assign a color to a state, and immediately check constraints to "fail fast"
    color(WA),
    
    color(NT), 
    WA \= NT,             % NT borders WA
    
    color(SA), 
    WA \= SA, NT \= SA,   % SA borders WA and NT
    
    color(Q),  
    NT \= Q, SA \= Q,     % Q borders NT and SA
    
    color(NSW), 
    Q \= NSW, SA \= NSW,  % NSW borders Q and SA
    
    color(V),   
    SA \= V, NSW \= V,    % V borders SA and NSW
    
    color(T).             % Tasmania is an island; no land border constraints