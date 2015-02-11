#!/bin/bash
n=0
P=0
q=0
cat test4.pyx | while read line;
do
	((var++))
	P=$(echo -ne $line | grep --count "(" )
	Q=$(echo -ne $line | grep --count ")" )
	# echo $var,$P, $line;
	# echo $P,$Q, $line; 
	echo $P,$Q, $line;
done 
