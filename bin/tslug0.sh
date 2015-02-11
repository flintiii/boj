#!/bin/bash
# pflint Thu 22 Jan 2015 11:52:41 AM EST   
# Bull in china shop approach to content.xml
#
#
unhead=$1
tbody=$2
# From this line to EOF is the code to export
# note slash escapes (\\)
read -d '' tslug <<"EOF"
Atext:style-name Text_20_body
(text:span
Atext:style-name T3
- ASCII Text
)text:span
)text:p
EOF
#
echo "$tslug" |while read line; 
	do 
	if [ "$line" == "- ASCII Text"  ]; then line=$unhead; fi
	echo $line
	done
# From this line to EOF is the code to export
# note slash escapes (\\)
read -d '' tslug <<"EOF"
Atext:style-name Text_20_body
(text:span
Atext:style-name T3
- ASCII Text
)text:span
)text:p
EOF
#
echo "$tslug" |while read line; 
	do 
	if [ "$line" == "- ASCII Text"  ]; then line=$tbody; fi
	echo $line
	done
