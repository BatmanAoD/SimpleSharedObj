.PHONY: all
all: sharedlib

sharedlib: simple.o
	cc -shared -Wl,-rpath,$(PWD),-soname,libsimple.so \
		-o libsimple.so simple.o

objfile: simple.c simple.h
	cc -c -fPIC -g -o simple.o -Wall -Wextra simple.c

.PHONY: test
test: sharedlib
	cc test.c -L$(PWD) -Wl,-rpath,$(PWD) -lsimple -o test

.PHONY: clean
clean: cleanobj cleanshared cleantest

cleanobj:
	rm -f *.o

cleanshared:
	rm -f *.so

cleantest:
	rm -f test
