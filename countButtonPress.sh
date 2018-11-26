#!/bin/bash
chmod 755 countButtonPress.sh
x=0
while :
do
	b=$(gpio read 5)
	if (($b == 0));
	then
		c=$(gpio read 5)
		if (($c == 1));
		then 
			let "x=x+1"
			if (($x > 15));
			then
				gpio write 4 1
			fi
			./setbits.sh $x
		fi
	fi
done
