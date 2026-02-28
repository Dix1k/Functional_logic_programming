domains
	s=string
	i=integer
	file=f
database
	score(s,i)
predicates
	start
	m(i)
	menu
clauses
start:-
	existfile("student.ddb"),!,
	consult("student.ddb"),
	menu.
start:-
	openwrite(f,"student.ddb"),
	closefile(f),
	menu.
menu:-
	clearwindow,
	write("1 - Получить список студентов"),nl,
	write("2 - Получить оценку по фамилии"),nl,
	write("3 - Получить фамилию по оценке"),nl,
	write("4 - Получить все фамилии по оценке"),nl,
	write("5 - Удалить запись по фамилии"),nl,
	write("6 - Вывести фамилии выше заданной оценки"),nl,
	write("7 - Добавить новую запись"),nl,
	write("0 - Выйти"),nl,
	readchar(C),
	m(C).
m('1'):-
	clearwindow,
	score(N,B),
	write(N),write(": "),write(B),nl,
	fail
	;
	readchar(_),
	menu.
m('2'):-
	clearwindow,
	write("Введите фамилию"),nl,
	readln(N),
	score(N,B),
	write("Оценка: ",B),
	readchar(_),
	menu.
m('3'):-
	clearwindow,
	write("Введите оценку"),nl,
	readint(B),
	score(N,B),
	write("Фамилия: ",N),
	readchar(_),
	menu.
m('4'):-
	clearwindow,
	write("Введите оценку"),nl,
	readint(B),
	score(N,B),
	write(N),nl,
	fail
	;
	readchar(_),
	menu.
m('5'):-
	clearwindow,
	write("Удаление записи"),nl,
	write("Введите фамилию"),nl,
	readln(N),
	retract(score(N,_)),
	write("Запись удалена!"),
	readchar(_),
	menu.
m('6'):-
	clearwindow,
	write("Введите оценку"),nl,
	readint(Min),
	score(N,B),
	B>Min,
	write(N),write(": "),write(B),nl,
	fail
	;
	readchar(_),
	menu.
m('7'):-
	clearwindow,
	write("Введите фамилию"),nl,
	readln(N),
	write("Введите оценку"),nl,
	readint(B),
	assert(score(N,B)),
	write("Запись успешно добавлена!"),nl,
	readchar(_),
	menu.
m('0'):-
	clearwindow,
	save("student.ddb").
m(_):-
	menu.
goal
	start.