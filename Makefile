
CXXFLAGS=$(shell wx-config --cflags) -Wall -ggdb3

LDLIBS=$(shell wx-config --libs core,base,gl,html,adv)
LDLIBS+=-lGL -lGLU 
LDLIBS+=-lboost_system -lboost_filesystem 
LDLIBS+=$(shell pkg-config libxml++-2.6 --libs gtk+-2.0 x11 )

all: tinyxml2/tinyxml2.o
	make -C logic
	make -C GUI
	make -C Z80
	g++ -o cedar GUI/GLFont/*.o GUI/*.o logic/*.o Z80/*.o tinyxml2/tinyxml2.o $(LDLIBS) -ggdb3

library-parse: library-parse.o tinyxml2/tinyxml2.o
	$(CXX) -o $@ $^
