domains
	i = integer
predicates
	sum(i,i)
clauses
	sum(0,0).
sum(N,S):-
	N1=N-1,
	sum(N1,S1),
	S=S1+N.