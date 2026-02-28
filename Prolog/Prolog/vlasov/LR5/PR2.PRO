DOMAINS
    file = f_in; f_out

PREDICATES
    crossword
    process_file(string)
    check_and_write(string, string)
    check_mask(string, string)
    match_chars(string, string)

CLAUSES
    crossword :-
        write("Введите маску (напp. **o**): "), 
        readln(Mask),
        existfile("words.txt"), !,
        openread(f_in, "words.txt"),
        openwrite(f_out, "result.txt"),
        
        readdevice(f_in),
        process_file(Mask),
        
        readdevice(keyboard),
        closefile(f_in),
        closefile(f_out),
        
        write("Поиск завеpшен. Результат в result.txt"), nl,
        readchar(_).

    crossword :- 
        write("Ошибка!"), nl, readchar(_).

  
    process_file(Mask) :-
        not(eof(f_in)),
        readln(Word),
        Word <> "", !, 
        check_and_write(Word, Mask),
        process_file(Mask).
    process_file(_) :- !.

  
    check_and_write(Word, Mask) :-
        check_mask(Word, Mask), !,
        writedevice(f_out), write(Word), nl,
        writedevice(screen), write("Найдено: ", Word), nl.
    check_and_write(_, _).

    check_mask(Word, Mask) :-
        str_len(Word, L), 
        str_len(Mask, L),
        match_chars(Word, Mask).

    match_chars("", "") :- !.
    match_chars(W, M) :-
        frontchar(W, _, Wt), 
        frontchar(M, '*', Mt), !,
        match_chars(Wt, Mt).
    match_chars(W, M) :-
        frontchar(W, Wh, Wt), 
        frontchar(M, Mh, Mt),
        Wh = Mh, !,
        match_chars(Wt, Mt).

GOAL
    crossword.