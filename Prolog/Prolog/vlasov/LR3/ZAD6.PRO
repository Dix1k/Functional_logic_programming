domains
	i = integer
predicates
	sum(i,i)
	sim(i,i)
	dim(i,i)
	s(i,i,i,i)
	d(i,i,i,i)
	f(i,i,i,i)
clauses
sum(N,Sum):-
	s(1,N,0,Sum).
s(N, N, Sum, Sum):- !.
s(Current, N, Sum0, Sum):-
	NewSum=Sum0+Current,
	Next=Current + 2,
	s(Next, N, NewSum, Sum).
sum(N,Sum):-
	d(1,N,0,Sum).
d(N, N, Sum, Sum):- !.
d(Current, N, Sum0, Sum):-
	NewSum=Sum0+Current,
	Next=Current + 1,
	d(Next, N, NewSum, Sum).
dim(N,Sum):-
	f(1,N,0,Sum).
f(1, _, Sum, Sum) :- !.
f(Current, N, Sum0, Sum):-
	NewSum=Sum0+Current,
	Next=Current - 2,
	f(Next, N, NewSum, Sum).


