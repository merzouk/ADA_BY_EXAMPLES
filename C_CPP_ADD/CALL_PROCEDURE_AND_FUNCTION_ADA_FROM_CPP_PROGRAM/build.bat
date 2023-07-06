echo "remove  all *.ali files"

del *.ali

echo "remove all *.o files"

del *.o

echo "remove exec file"

del main.exe

echo "end file cleaning"

echo "Start generating the executable file"

echo "run gnatmake" 

gnatmake -c ada_package

echo "run g++ command"

g++ -g -Wall -ansi -pedantic -std=c++0x -c *.cpp


echo "run gnatbind command"

gnatbind -n ada_package


echo "build exec "

gnatlink ada_package -o main --LINK=g++ -lstdc++ main.o Calculs.o


pause