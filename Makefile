CC = gcc
CXX = g++

INCLUDES =

CFLAGS = -g -Wall -Wno-write-strings
CXXFLAGS = -g -Wall -Wno-write-strings

LDFLAGS = -g  -lcrypto

LDLIBS = -L/usr/lib -lcrypto 

ray_tracing:
	g++ -std=c++17 -g -Wall -o ray_tracing ray_tracing_main.cc

.PHONY: clean
clean:
	rm -rf *.ppm *.o a.out ray_tracing *.dSYM

.PHONY: all
all:
	make clean ray_tracing
