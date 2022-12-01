CC=gcc
CFLAGS= -O2 -Wall -ggdb
LDFLAGS= -ll -lm


rpn: rpn.tab.o lex.yy.o
	$(CC) -o $@ rpn.tab.o lex.yy.o

rpn.tab.c rpn.tab.h: rpn.y
	bison --defines rpn.y

rpn.tab.o: rpn.tab.c rpn.tab.h


lex.yy.c: lexer.l
	flex lexer.l


lex.yy.o: lex.yy.c rpn.tab.h


clean:
	rm -f rpn.tab.* lex.yy.* term
