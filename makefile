#makefile
calc:	calc.tab.o lex.yy.o
	gcc calc.tab.o lex.yy.o -lfl -o calc

lex.yy.o:	lex.yy.c
	gcc -c lex.yy.c

calc.tab.o:	calc.tab.c
	gcc -c calc.tab.c

lex.yy.c: calc.l
	lex calc.l

calc.tab.c:
	bison -d calc.y

clean:
	rm calc calc.t* lex*