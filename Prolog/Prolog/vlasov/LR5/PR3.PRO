DOMAINS
    cl = char*
    s = string

PREDICATES
    start
    can_make(s, cl)
    delete_one(char, cl, cl)
    string_to_list(s, cl)
    print_result(s, cl)

CLAUSES
    start :-
        clearwindow,
        write("Ç¢•§®‚• ≠†°Æp °„™¢ (≠†Øp®¨•p: ÆÆ™´‚): "),
        readln(L_Str),
        string_to_list(L_Str, Letters),
        
        write("Ç¢•§®‚• ·´Æ¢Æ (≠†Øp®¨•p: ¨Æ´Æ‚): "),
        readln(Word),
        
        nl, write("èpÆ¢•p™†..."), nl,
        print_result(Word, Letters),
        
        nl, write("Press any key..."),
        readchar(_).

    print_result(W, L) :-
        can_make(W, L), !,
        write("RESULT: åÆ¶≠Æ ·Æ·‚†¢®‚Ï (OK)").
    
    print_result(_, _) :-
        write("RESULT: ç•´ÏßÔ ·Æ·‚†¢®‚Ï (FAIL)").

    string_to_list("", []) :- !.
    string_to_list(S, [H|T]) :-
        frontchar(S, H, Rest),
        string_to_list(Rest, T).

    /* –†–µ–∫—É—Ä—Å–∏–≤–Ω–∞—è –ø—Ä–æ–≤–µ—Ä–∫–∞ —Å–ª–æ–≤–∞ */
    can_make("", _) :- !.
    can_make(Word, Letters) :-
        frontchar(Word, C, Rest),
        delete_one(C, Letters, NewLetters), !,
        can_make(Rest, NewLetters).

    /* –£–¥–∞–ª–µ–Ω–∏–µ –æ–¥–Ω–æ–π –±—É–∫–≤—ã (—Å—á–µ—Ç—á–∏–∫) */
    delete_one(X, [X|T], T) :- !.
    delete_one(X, [H|T], [H|R]) :- 
        delete_one(X, T, R).

GOAL
    start.