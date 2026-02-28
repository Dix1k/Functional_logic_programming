domains
	i=integer
predicates
	fact(i)
	i(i,i,i)
	i
	ok
clauses
	fact(0).
	fact(1). 
i:-
	fact(A),fact(B),
	i(A,B,X),
	write(A," ",B," ",X),
	nl,fail.
i(A,B,X):-
	A+B=2,X=1,!;
	X=0.
ok:-
	makewindow(1,7,7,"таблица истинности",0,0,15,40),
	cursor(0,0).
goal
	ok,
	write("A B Z"),nl,
	i.