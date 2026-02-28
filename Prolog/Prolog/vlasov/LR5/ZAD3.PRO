DOMAINS
    i = integer
    li = integer*

PREDICATES
    magic3(li)
    perm(li,li)
    sum3(i,i,i,i)

CLAUSES

magic3([A,B,C, D,E,F, G,H,I]):-
    perm([1,2,3,4,5,6,7,8,9],[A,B,C,D,E,F,G,H,I]),
    S=15,
    sum3(A,B,C,S),
    sum3(D,E,F,S),
    sum3(G,H,I,S),
    sum3(A,D,G,S),
    sum3(B,E,H,S),
    sum3(C,F,I,S),
    sum3(A,E,I,S),
    sum3(C,E,G,S),
    write(A," ",B," ",C),nl,
    write(D," ",E," ",F),nl,
    write(G," ",H," ",I),nl.

sum3(X,Y,Z,S):- S = X+Y+Z.

perm([],[]).
perm([X|T],R):- perm(T,R1), insert(X,R1,R).

insert(X,L,[X|L]).
insert(X,[Y|T],[Y|R]):-insert(X,T,R).
