#!/bin/bash
# pflint Mon 12 Jan 2015 07:21:46 AM EST  
# packs unpacks an odt file
# 
#debug
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version 
fname=$1
drnm=$2
if [ ! $# == 2 ]; then echo "Three variables are: files in out and directory"; exit; fi
echo $fname
# 1 check if the file is really an odt
#
# 2 if it is then make a directory of this name
# drnm=$(echo $fname |cut -d "." -f 1)
echo $drnm
# 3 change to this directory 
cd $drnm
# 4 make the mimetype
pwd
zip -0 -X ../$fname mimetype
# 5 add the rest of the xml
zip -r ../$fname * -x mimetype
# 6 show the content.xlm file
cd ..
libreoffice $fname

