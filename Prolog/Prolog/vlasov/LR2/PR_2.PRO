PREDICATES
	ok_
CLAUSES
	ok_ :-
		makewindow(1,126,7, "Работа с окнами", 4,4,10,32),
		cursor(3,7),
		write("Введите имя: "),
		readln(Name),
		nl,
		write("Пpивет ", Name, "!").
GOAL
	ok_.