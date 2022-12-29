CC=gcc
CFLAGS= -O2 -Wall -ggdb
LDFLAGS= -ll -lm


parser: parser.tab.o lex.yy.o vars_interp.o
	$(CC) -o $@ parser.tab.o lex.yy.o vars_interp.o $(LDFLAGS)



parser.tab.c parser.tab.h: parser.y
	bison --defines parser.y

parser.tab.o: parser.tab.c parser.tab.h


lex.yy.c: lexer.l
	flex -d lexer.l


lex.yy.o: lex.yy.c parser.tab.h 


vars_interp.o: vars_interp.c vars_interp.h
	$(CC) $(CFLAGS) -c vars_interp.c

clean:
	rm -f parser.tab.* lex.yy.* parser
