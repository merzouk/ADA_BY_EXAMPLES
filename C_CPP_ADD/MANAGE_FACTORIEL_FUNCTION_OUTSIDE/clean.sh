#!/bin/sh

echo "begin file cleaning"

files=$(ls *.ali 2> /dev/null | wc -l)

if [ "$files" != "0" ] then
    echo "remove  all *.ali files"
	rm *.ali
fi

files=$(ls *.o 2> /dev/null | wc -l)

if [ "$files" != "0" ] then 
	echo "remove all *.o files"
	rm *.o
	echo "remove exec file"
	rm main
fi

echo "end file cleaning"

exit 0