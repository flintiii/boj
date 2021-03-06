#!/bin/bash
# pflint Mon 12 Jan 2015 07:21:46 AM EST  
# packs unpacks an odt file
#
#
#* function spause   - A simple tarry...
function spause(){
   # -t sets time
   # read -t $pt -p "$*" ans
   read -p "Hit enter to continue..." ans
   echo $ans
}
# 
#debug
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version 
fname=$1 ; echo "fname is "$fname
cname=$2 ; echo "cname is "$cname
drnm=$3 ; echo "drnm is "$drnm
if [ ! $# == 3 ]; then echo "Three variables are: files in out and directory"; exit; fi
#
echo $fname
# 1 check if the file is really an odt
#
# 2 if it is then make a directory of this name
# drnm=$(echo $fname |cut -d "." -f 1)
echo $drnm
#
# 4 check if xml is valid
xmlstarlet val $cname
spause
# 3 copy the change name into the directory
cp $cname /$drnm/content.xml
#
# 4 change to this directory 
cd $drnm
# 5 make the mimetype
pwd
zip -0 -X ../$fname mimetype
# 5 add the rest of the xml
zip -r ../$fname * -x mimetype
#
# 6 show the content.xml file
cd ..
spause
libreoffice $fname

