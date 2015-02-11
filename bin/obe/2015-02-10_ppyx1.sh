#!/bin/bash
n=0
P=0
q=0
out=""
cat test4.pyx | while read line;
do
	((var++))
	out=$(echo -ne $line | grep --count "(" ) 
	# if [[ $(echo -ne $line | grep --count "(" ) ]]; then out="open" ; fi
	# if [[ $(echo -ne $line | grep --count "(" ) ]]; then ((out++)) ; fi
	# if [[ $(echo -ne $line | grep --count ")" ) ]]; then ((out++)) ; fi
	# echo $var,$P, $line;
	# echo $P,$Q, $line; 
	echo $var,$out, $line;
	out=""
done 
