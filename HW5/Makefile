all: clean
	flex scanner.lex
	bison -d parser.ypp
	g++ -ggdb -g -o hw3 *.c *.cpp
clean:
	rm -f lex.yy.c
	rm -f parser.tab.*pp
	rm -f hw3
