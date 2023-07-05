#!/bin/sh

echo "remove  all *.ali files"

rm *.ali

echo "remove all *.o files"
rm *.o

echo "remove exec file"

rm main

echo "run gnatmake" 

gnatmake -c ada_package

echo "run g++ command"

g++ -g -Wall -ansi -pedantic -std=c++0x -c *.cpp


echo "run gnatbind command"

gnatbind -n ada_package


echo "build exec "

gnatlink ada_package -o main --LINK=g++ -lstdc++ main.o Calculs.o

exit 0
