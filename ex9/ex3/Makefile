CC=gcc
CFLAGS= -O2 -Wall -ggdb
LDFLAGS= -ll -lm


bool: bool.tab.o lex.yy.o
	$(CC) -o $@ bool.tab.o lex.yy.o

bool.tab.c bool.tab.h: bool.y
	bison --defines bool.y

bool.tab.o: bool.tab.c bool.tab.h


lex.yy.c: lexer.l
	flex lexer.l


lex.yy.o: lex.yy.c bool.tab.h


clean:
	rm -f bool.tab.* lex.yy.* bool
