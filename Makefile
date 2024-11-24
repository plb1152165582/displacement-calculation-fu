CXXFLAGS=-Iinclude

CXX=g++

all: main.cpp
	$CCX $CXXFLAGS -o IMUFHE src/main.cpp