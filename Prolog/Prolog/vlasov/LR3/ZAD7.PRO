domains
	i=integer
predicates
	main(i)
	runRandomTest(i)
	generate(i,i,i,i,i)
	randBit(i)
	processBit(i,i,i,i,i)
clauses
randBit(B):-
	RANDOM(2,B).
processBit(0,Z0,O0,Z1,O1):-
	Z1=Z0+1,
	O1=O0.
processBit(1,Z0,O0,Z1,O1):-
	Z1=Z0,
	O1=O0+1.
generate(0,Z,O,Z,O):-!.
generate(N,Z0,O0,Z,O):-
	randBit(B),
	processBit(B,Z0,O0,Z1,O1),
	N1=N-1,
	generate(N1,Z1,O1,Z,O).
runRandomTest(N):-
	generate(N,0,0,Z,O),
	write("Количество 0: "),write(Z),nl,
	write("Количество 1: "),write(O),nl.
main(N):-
	write("Введите количество генеpаций: "),
	readint(N),
	runRandomTest(N).
goal
	main(N).