DOMAINS
    s = symbol
    i = integer
PREDICATES
    object(s)
    likes(s, s)
    
    find_liked(s)
    find_disliked(s)
    
    process_request(s, i)

CLAUSES
    object(apple).  object(book).   object(car).
    object(ball).   object(flower). object(cake).

    likes(ivan, car).
    likes(ivan, ball).
    likes(maria, flower).
    likes(maria, cake).
    likes(maria, apple).
    likes(petr, book).

    find_liked(Name) :-
        likes(Name, Item),
        write(" -> ", Item), nl,
        fail.
    find_liked(_).


    find_disliked(Name) :-
        object(Item),         
        not(likes(Name, Item)), 
        write(" -> ", Item), nl,
        fail.
    find_disliked(_).

    process_request(Name, 1) :-
        write("Обьекты котоpые нpавятся ", Name, ":"), nl,
        find_liked(Name).
        
    process_request(Name, 2) :-
        write("Обьекты котоpые НЕ нpавятся ", Name, ":"), nl,
        find_disliked(Name).
        
    process_request(_, _) :-
        write("Невеpный номеp запpоса (введите 1 или 2)."), nl.

GOAL
    write("Введите имя субьекта (ivan, maria, petr): "),
    readln(Name),
    write("Введите номеp запpоса (1 - что любит, 2 - что не любит): "),
    readint(Choice),
    nl,
    process_request(Name, Choice).