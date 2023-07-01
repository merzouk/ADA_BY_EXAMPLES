# call ADA Procedure from CPP programm

## Compil and Run the application 

## Here are the compilation commands:

```
$ gnatmake -c simple_cpp_interface

$ g++ -c *.cpp

$ gnatbind -n simple_cpp_interface

$ gnatlink simple_cpp_interface -o main --LINK=g++ -lstdc++ A.o main.o

```

The main.exe file obtained allows you to run the application