CC=gcc
CFLAGS= -O2 -Wall -ggdb
LDFLAGS= -ll -lm


parser: parser.tab.o lex.yy.o
	$(CC) -o $@ parser.tab.o lex.yy.o $(LDFLAGS)

parser.tab.c parser.tab.h: parser.y
	bison --defines parser.y

parser.tab.o: parser.tab.c parser.tab.h


lex.yy.c: lexer.l
	flex -d lexer.l


lex.yy.o: lex.yy.c parser.tab.h 


clean:
	rm -f parser.tab.* lex.yy.* parser
