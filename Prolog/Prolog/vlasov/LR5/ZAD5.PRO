DOMAINS
    l = symbol*

PREDICATES
    make_word(l,symbol*)

CLAUSES

make_word(L,Word):- perm(L,Word).
