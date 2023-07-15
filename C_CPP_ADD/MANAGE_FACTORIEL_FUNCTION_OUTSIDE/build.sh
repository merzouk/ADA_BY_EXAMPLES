#!/bin/sh

echo "Start generating the executable file"



gcc -c -I.\ -I- main.adb
gcc -c -I.\ -I- for_loop_calculate.adb
gcc -c -I.\ -I- saisi_limite.adb
gcc -c -I.\ -I- display_result.adb
gcc -c -I.\ -I- factorial.adb
gcc -c -I.\ -I- format_message.adb
gnatbind -x main.ali
gnatlink main.ali


echo "End generating the executable file"

exit 0
