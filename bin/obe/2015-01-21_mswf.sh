#!/bin/bash
# Mon 19 Jan 2015 03:46:06 PM EST Microsoft Word Filter for Grant Generator  
# 
version="0.02"
#
# next lines run ballisticly
#* hold environment
S=$PWD
# echo "This is the path "$S
#t
#* check location of vital files and programs, sanity check
for prog in curl expect cadaver xmlstarlet git # debug banana
do
# echo $prog
isit=$(which $prog)
# echo $isit 
if [ ! -f "$isit" ]
then
    echo "This program needs $prog which is not installed on this system."
    echo "Type \"sudo apt-get install $prog\" to fix this."
    exit 0
fi
done
#
# Define files to be used
# 
# qualify user
# uid="" ; if [ "$uid" == "" ]; then echo "Set user id!"; exit; fi
# passwd="" ; if [ "$passwd" == "" ]; then echo "Set user passwd!"; exit; fi
# echo "Check if you are root"
# uroot()
# exit
#
# above runs ballisticly
#
#* function help  - Help function for template basic help goes here
function help(){
clear;
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version; uroot #debug 
cat $0 | grep '^## ' | sed -e 's/##//'
# echo "This is the help function"
##                       *****DOCUMENTATION*****
## You get this when you put in the wrong number or type of arguments...
## The name of this program is mswf.sh, a tiddle based proposal generator.
## This is released under GPL I
## The syntax is:
##  - mswf.sh unzip <filename> - Blows open an odf.
##  - mswf.sh zip <folder> <filename> - makes odf 
##  - mswf.sh val <folder> validates content.xml
##  - mswf.sh   
##  - mswf.sh 
##  - mswf.sh  
##  - mswf.sh 
##  - mswf.sh 
##    in all of these, Output is delivered to the screen...
##      *** NOTE *** This program need not be run as root!
##
## For structure information type "grep '^\#\*' mswf.sh"
##    :^)
## (C) P Flint, Barre Open Systems Institute Liscensed under GPLI
##
#          *****Documentation Loop ends here the rest is function******
#
} # Test: mswf.sh
#
#* function dummy - Rename and fill stuff in between braces
function dummy(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test:
#
#
#* function unzip - unzip <filename> - Blows open an odf.
function unzip(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
spause
} # Test: ./mswf.sh unzip one two three
#
#
#* function zip - zip <folder> <filename> - makes odf 
function zip(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#debug
drname=$var2; echo "Directory is "$drname
fname=$var3; echo "File is "$fname
spause
#
# 4 change to this directory 
cd $drnm
# 5 make the mimetype
pwd
zip -0 -X ../$fname mimetype
# 5 add the rest of the xml
zip -r ../$fname * -x mimetype
spause
} # Test: ./mswf.sh zip
#
#* function val - <folder> validates content.xml
function val(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
#debug 
spause
} # Test: ./mswf.sh val banana
#
#* function remt <PROJNAME> - removes a <PROJNAME> in the current tiddlewiki
function remt(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#debug 
spause
} # Test:
#
#
#* function unzipt - sets the name of the title tiddle 
function unzipt(){
# curl -T banana.title http://the:end@docbox.flint.com:1980/banana/tiddlers/SiteTitle
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
spause
} # Test:
#
#* function setst - sets the name of the sub-title tiddle 
function setst(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
spause
} # Test:
#
#
#* function mktdl - creates an indivitual tiddle 
function mktdl(){
#debug 
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
spause
} # Test:
#
#* function popgp - populates the grant proposal 
function popgp(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#debug 
spause
} # Test: mswf.sh popgp
#
#* function overview - creates the overview tiddle and populates it
function overview(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# spause
#
spause
# echo $tiddle
} # Test:
#
######################################STANDARD AND MAYBE USEFUL FUNCTIONS BELOW
#
#
#* function uroot - Checks to see if you are root
function uroot(){
# echo "Make sure only root can run script"
if [ "$(id -u)" != "0" ]; then
   echo "This script does not need to run as root but that's OK as you are not root" 1>&2
   exit 1
fi
} # Test:~flint/bin/mswf.sh uroot
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
#*###################################### MAIN ENTRY POINT AND COMPOUND CASE
#
# echo "mswf.sh v"$version" starts"
#* Evaluator Routine
# Note the evaluator allows for many cases and error checking...
# ARGS=$#         # carries the number of args into the functions...
if [ "$#" -eq "1" ] && [ "$1" = "unzip"    ]; then ARGS="1"; fi
if [ "$#" -eq "3" ] && [ "$1" = "zip"      ]; then ARGS=$# ; fi
if [ "$#" -eq "1" ] && [ "$1" = "val"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "remt"     ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "unzipt"   ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "setst"    ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "popgp"    ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "mktdl"    ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "overview" ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "uroot"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"   ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"     ]; then ARGS="9"; fi
# this tests the evaluator...
#debug echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause 
# typical cases, be careful to make your own...
case "$ARGS" in
    "0") clear; $1="help"; exit 1;;			        # got nothing, display help and go
    "1") $1 ;;                                              	# run the command
    "2") var2=$2;  $1 ;;                                    	# run the command with an argument
    "3") var3=$3; var2=$2;  $1 ;;                           	# run the command with two arguments
    "4") var4=$4; var3=$3; var2=$2;  $1 ;;                      # run the command with three arguments
    "5") prompt=$2; $1 ;;				    	# run the command with a different argument
    "6") time=$3; prompt=$2;  $1 ;;				# run the command with two different arguments
    "7") defvbl; $1 ;;						# run the command and default variables
    "8") var2=$2;  $1 ;;                                 	# run the command and unziple variables
    "9") var3=$3; var2=$2;  $1 ;;                               # run the command and unziple variables
      *) clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. To TEST:
#
# echo " ";
echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
#debug rm -rf ss # removes super secret data file
#* restore environment
cd "$S"
