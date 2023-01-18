CC=gcc
CFLAGS= -O2 -Wall -ggdb -Iinclude
LDFLAGS= -ll -lm

bin/styx: build/styx.tab.o build/lex.yy.o build/vars_interp.o build/ast.o build/babylonian_converter.o build/parameters.o
	$(CC) -o $@ build/styx.tab.o build/lex.yy.o build/vars_interp.o build/ast.o build/babylonian_converter.o build/parameters.o $(LDFLAGS)

build/styx.tab.c build/styx.tab.h: src/styx.y
	bison -t --defines src/styx.y -o build/styx.tab.c -Wcounterexamples 

build/styx.tab.o: build/styx.tab.c build/styx.tab.h
	$(CC) $(CFLAGS) -c -o build/styx.tab.o build/styx.tab.c

build/lex.yy.c: src/styx.l
	flex -d -o build/lex.yy.c src/styx.l 

build/lex.yy.o: build/lex.yy.c build/styx.tab.h include/ast.h include/babylonian_converter.h
	$(CC) $(CFLAGS) -c -o build/lex.yy.o build/lex.yy.c

build/ast.o: src/ast.c include/ast.h include/vars_interp.h build/styx.tab.h include/babylonian_converter.h include/value_type.h
	$(CC) $(CFLAGS) -c -o build/ast.o src/ast.c

build/babylonian_converter.o: src/babylonian_converter.c include/babylonian_converter.h
	$(CC) $(CFLAGS) -c -o build/babylonian_converter.o src/babylonian_converter.c

build/vars_interp.o: src/vars_interp.c include/vars_interp.h include/ast.h
	$(CC) $(CFLAGS) -c -o build/vars_interp.o src/vars_interp.c

build/parameters.o: src/parameters.c include/parameters.h
	$(CC) $(CFLAGS) -c -o build/parameters.o src/parameters.c

clean:
	rm -f build/*
