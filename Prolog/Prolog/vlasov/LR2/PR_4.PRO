DOMAINS
    i = integer
PREDICATES
    fact(i)
    logic_not(i, i)    
    logic_or(i, i, i)  
    
    run_not
    run_or
CLAUSES
    fact(0). 
    fact(1).

    logic_not(0, 1).
    logic_not(1, 0).


    logic_or(0, 0, 0).
    logic_or(0, 1, 1).
    logic_or(1, 0, 1).
    logic_or(1, 1, 1).

    run_not :-
        write("Таблица НЕ (NOT)"), nl,
        write("A | Z"), nl,
        write("--+--"), nl,
        fact(A),           
        logic_not(A, Z),    
        write(A, " | ", Z), nl,
        fail.               
    run_not.

    run_or :-
        nl, write("Таблица или (OR)"), nl,
        write("A B | Z"), nl,
        write("----+--"), nl,
        fact(A), fact(B),   
        logic_or(A, B, Z),  
        write(A, " ", B, " | ", Z), nl,
        fail.
    run_or.

GOAL
    run_not, 
    run_or.