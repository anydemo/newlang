
all: newlangc

newlangc:
	bison -d newlangc.y --report=all \
	&& flex newlangc.l \
	&& gcc newlangc.h newlangc.tab.c newlangc.tab.h lex.yy.c newlangc.c -o $@ -lfl -lm

.PHONY: test
test: newlangc
	./newlangc < test/test.nl > test/test.result
	diff test/test.expected test/test.result

.PHONY: clean
clean:
	-rm *.yy.c
	-rm *.tab.c *.tab.h
	-rm *.output
	-rm newlangc
	-rm **/*.result
