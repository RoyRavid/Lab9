#!/bin/bash
chmod 755 waitForButtonPress.sh
x=0
while :
do
	b=$(gpio read 5)
	if (($b == 0));
	then
		sleep 0.5
		c=$(gpio read 5)
		if (($c == 1));
		then
			exit 1
		fi 
	fi
done
