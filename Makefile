CXXFLAGS = -Iinclude

OBJECTS = obj/main.o

all: obj/main.o
	g++ $(CXXFLAGS) -o IMUFHE $(OBJECTS)

obj/main.o: src/main.cpp
	g++ $(CXXFLAGS) -c -o obj/main.o src/main.cpp
