domains
 i=integer
predicates
	nod(i,i,i)
	squere(i)
	del(i,i,i,i,i)
clauses
nod(X,X,X):-!.
nod(X,Y,D):-
	X<Y,!,
	Y1=Y-X,
	nod(X,Y1,D);
	nod(Y,X,D). 
del(N1,N2,T,X,X):-
	T=N1,!;T=N2,!.
del(N1,N2,T,X,L):-
	D=T+1, 
	0=N1 mod D,
	0=N2 mod D,!,
	del(N1,N2,D,D,L).
del(N1,N2,T,X,L):-
	D=T+1, 
 	del(N1,N2,D,X,L).
squere(X):-
	X = 15,
	write("2","7","6","9","5","1","4","3","8", X).