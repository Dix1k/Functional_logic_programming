domains
	i = integer
predicates
	sum(i,i,i,i)
clauses 
	sum(1,B,_,B).
sum(N,A,R,X):-
	N1=N-1,
	sum(N1,A,R,X1),
	X=X1*R.