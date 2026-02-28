DOMAINS
    s = string

PREDICATES
    solve
    matches(s,s)

CLAUSES

solve:-
    write("Введите маску: "), readln(Mask),
    create(out),
    see("words.txt"),
    repeat,
        readln(Word),
        (Word = end_of_file ->
            !
        ;
            (matches(Word,Mask) ->
                write(out,Word), nl(out)
            ;
                true
            ),
            fail
        ),
    seen,
    close(out),
    write("Готово!").

matches(_,[]) :- !.
matches([W|TW],[M|TM]):-
    ( M='*' ; M=W ),
    matches(TW,TM).