#!/bin/bash
# pflint Mon 12 Jan 2015 07:21:46 AM EST  
# packs unpacks an odt file
# 
#debug
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version 
fname=$1
echo $fname
# 1 check if the file is really an odt
#
# 2 if it is then make a directory of this name
drnm=$(echo $fname |cut -d "." -f 1)
echo $drnm
rm -rf $drnm > /dev/null
mkdir $drnm
# 3 change to this directory 
cd $drnm
# 4 expand the file
unzip ../$fname
# 5 show the content.xlm file
