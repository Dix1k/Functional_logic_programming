DOMAINS
	s=string
PREDICATES
	parent(s,s)
	sister(s,s)
	woman(s)
include "000.txt"

CLAUSES
	sister(X,Y):-
		parent(Z,X),parent(Z,Y),X<>Y,woman(Y).
GOAL
	sister("‘ θ ",F),
	write("- ",F," α¥αβp  ‘ θ¨"),nl,
	fail.