CC=g++
CFLAGS = -g -Wall

OPENCV = `pkg-config opencv --cflags --libs`
LIBS = $(OPENCV)

SRCS = $(wildcard *.cpp)
PROGS = $(patsubst %.cpp,%,$(SRCS))

all: $(PROGS)

%: %.cpp
	$(CC) $(CFLAGS) -o $@ $< $(LIBS)


#Regras de compilações usando g++ (apenas para exemplificar como compila)
#Mais adequado usar regras gerais como as acima
# rgb2gray:
# 	g++ rgb2gray.cpp -o rgb2gray `pkg-config opencv --cflags --libs`
#
# basicVideo:
# 	g++ basicVideo.cpp -o basicVideo `pkg-config opencv --cflags --libs`

.PHONY: clean
clean:
	rm -f $(PROGS)
