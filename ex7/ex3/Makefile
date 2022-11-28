CC=gcc
CFLAGS= -O2 -Wall -ggdb
LDFLAGS= -ll -lm

program: lex.yy.c
	$(CC) -o program lex.yy.c $(LDFLAGS)

lex.yy.c:
	flex lexer.l


clean:
	rm lex.yy.c program *.o
