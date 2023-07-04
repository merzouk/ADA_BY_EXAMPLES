#!/bin/sh

echo "remove  all *.ali files"

rm *.ali

echo "remove all *.o files"
rm *.o

echo "remove exec file"

rm main

echo "run gnatmake" 

gnatmake -c simple_cpp_interface

echo "run g++ command"

g++ -g -Wall -ansi -pedantic -std=c++0x -c *.cpp


echo "run gnatbind command"

gnatbind -n simple_cpp_interface


echo "build exec "

gnatlink simple_cpp_interface -o main --LINK=g++ -lstdc++ Methods.o main.o


exit 0
