#!/bin/bash
chmod 755 initMode.sh
x=0

for x in 0 1 2 3 4
do
	gpio mode $x out
	gpio write $x 0
	
	echo $x
done
gpio mode 5 in
gpio mode 5 up

exit 1

