domains
	i = integer
predicates
	sum_odd(i,i)
	s(i,i,i)
clauses
sum_odd(N,S):-
	s(1,N,S).
s(I,N,0):-
	I>N,!.
s(I,N,S):-
	I1=I+2,
	s(I1,N,S1),
	S=S1+I.
