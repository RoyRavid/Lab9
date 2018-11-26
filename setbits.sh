#!/bin/bash
chmod 755 setbits.sh


x=0
n=$1


echo "start"
	gpio write 0 0
	gpio write 1 0
	gpio write 2 0
	gpio write 3 0
	let "x=$n&1"; echo $x
	if (($x == 1));
	then 
		gpio write 0 1
	fi
	let "x=$n&2"; echo $x
	if (($x == 2));
	then
		gpio write 1 1
	fi
	let "x=$n&4"; echo $x
	if (($x==4));
	then
		gpio write 2 1
	fi
	let "x=$n&8"; echo $x
	if (($x==8));
	then
		gpio write 3 1
	fi

