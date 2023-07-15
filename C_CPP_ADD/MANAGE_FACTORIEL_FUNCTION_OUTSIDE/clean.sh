#!/bin/sh

echo "begin file cleaning"

echo "remove  all *.ali files"

rm *.ali

echo "remove all *.o files"

rm *.o

echo "remove exec file"

rm main

echo "end file cleaning"

exit 0