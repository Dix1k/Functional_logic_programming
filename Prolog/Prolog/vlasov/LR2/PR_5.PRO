DOMAINS
	i = integer
PREDICATES
	test_bits
CLAUSES
	test_bits :-
		write("Исследование bitand, bitor, bitxor, bitnot, bitleft, bitright"),nl,
		X = 5, Y = 3,
		bitand(X,Y,R1), write("5 and 3 = ", R1), nl,
		bitor(X,Y,R2), write("5 or 3 = ", R2), nl,
		bitxor(X,Y,R3), write("5 xor 3 = ", R3), nl,
		bitnot(X,R4), write("not 5 = ", R4), nl,
		bitleft(10,2 ,R5), write("10 << 2 = ", R5), nl,
		bitright(10,1,R6), write("10 >> 1 = ", R6), nl.
GOAL
	test_bits.