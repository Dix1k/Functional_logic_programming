domains
	r = real
predicates
	pOr(r,r, r)
	pNot(r, r)
	pBitand(r,r, r)
	pBitLeft(r,r,r)
	pBitRight(r,r,r)
	pBitXor(r,r,r)
clauses
pOr(N1,N2, A):-
	N1+N2<=2, N1 = 0, N2 = 0, A = 0, !;
	N1+N2<=2, A = 1, !.	
pNot(N, A):-
	N = 0, A = 1, !;
	N = 1, A = 0, !.
pBitand(N1,N2, A):-
	bitand(N1,N2, A).
pBitLeft(N1,N2,A):-
	bitleft(N1,N2,A).
pBitRight(N1,N2,A):-
	bitright(N1,N2,A).
pBitXor(N1,N2,A):-
	bitxor(N1,N2,A).