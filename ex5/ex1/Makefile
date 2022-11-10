CC=gcc
CFLAGS= -O2 -Wall -gddb
LDFLAGS=


program: lex.yy.c
	$(CC) -o program lex.yy.c -ll


lex.yy.c: 
	flex lexer.l 


clean:
	rm lex.yy.c program *.o


# Dependencies:


