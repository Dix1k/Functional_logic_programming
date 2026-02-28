DOMAINS
    s = symbol
    sl = symbol*

PREDICATES
    best_word(sl,s)
    usable(sl,sl)
    count(s,sl,i)

DATABASE
    best(s,i)

CLAUSES

best_word(L,BestWord):-
    assert(best("",0)),
    see("russian_words.txt"),
    repeat,
        readln(W),
        (W=end_of_file -> ! ;
            string2symbols(W,S),
            (usable(S,L) ->
                length(S,N),
                best(_,M),
                (N>M -> retract(best(_,_)), assert(best(W,N)) ; true )
            ;
                true
            ),
            fail
        ),
    seen,
    best(BestWord,_).

usable([],L):-!.
usable([X|T],L):-
    count(X,L,C1),
    count(X,[X|T],C2),
    C1>=C2,
    usable(T,L).

count(_,[],0):-!.
count(X,[X|T],N):-count(X,T,N1), N=N1+1,!.
count(X,[_|T],N):-count(X,T,N).
