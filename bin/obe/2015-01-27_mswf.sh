#!/bin/bash
# Wed 21 Jan 2015 07:17:44 AM EST Microsoft Word Filter for Grant Generator  
# Note change in evaluation of ARG!
# 
version="0.04"
#
# next lines run ballisticly
#* hold environment
S=$PWD
# echo "This is the path "$S
#t
#* check location of vital files and programs, sanity check
for prog in curl expect cadaver xmlstarlet git xsltproc unoconv # debug banana
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
##  - mswf.sh ounzip <folder>  <filename>  - Blows open an odf
##  - mswf.sh ozip   <folder> <filename> - makes odf 
##  - mswf.sh val    <folder> validates content.of xml
##  - mswf.sh inst   <folder> <filename> - puts filename in content.
##  - mswf.sh tpyx   <folder> <destfn.odt> <target.pyx> tests content.xml
##  - mswf.sh gpyx   <folder> <filename.pyx> gets pyx out as filename.pyx 
##  - mswf.sh pdfit  <filename>.odt converts to filename.pdf, tests
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
#* function ounzip - ounzip <folder>  <filename>  - Blows open an odf.
function ounzip(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
drnme=$var2 #debug; echo "Directory is "$drnme
fname=$var3 #debug; echo "File is "$fname
#
rm -rf $drnme > /dev/null
mkdir $drnme
#debug echo "Change to this directory"
cd $drnme
#debug echo "Expand the file"
unzip ../$fname > /dev/null
#debug 
spause
} # Test: 
#
#
#* function ozip - ozip <folder> <filename> - makes odf 
function ozip(){
# note that ozip is a reserved word, so do not use it as a function name...
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
drnme=$var2; echo "Directory is "$drnme
fname=$var3; echo "File is "$fname
#debug spause
#
# change to this directory 
cd $drnme
pwd
#debug spause
#
#debug echo "Make the mimetype"
zip -0 -X ../$fname mimetype
#debug echo "Add the rest of the xml"
zip -r ../$fname * -x mimetype
#debug spause
cd ..
libreoffice $fname
} # Test: mswf.sh ozip test1 test6.odt
#
#* function val - <folder> validates content.xml
function val(){
#debug echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
#debug
fname=$var2
#debug ; echo -n "File is "$fname
xmlstarlet val $fname
#debug spause
} # Test: .mswf.sh val test1.xml
#
#* function pdfit - get content.xml as pyx
function pdfit(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
fname=$var2; echo "fname is "$fname
#debug spause
unoconv -f pdf $fname.odt # convert to pdf
ls -alt $fname.pdf
#debug spause
evince $fname.pdf
} # Test:
#
#* function csow - content mamipulator
function csow(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
xmlstarlet depyx content.pyx > testd1/content.xml; 
xmlstarlet val testd1/content.xml|while read line; do echo $line; done
xmlstarlet depyx content.pyx > contentn.xml; xmlstarlet val contentn.xml
} # Test:
#
#
#* function tpyx - tests content.xml 
function tpyx(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
drnme=$var2; echo "Directory is "$drnme
fname=$var3; echo "fname is "$fname
fnami=$var4; echo "fnami is "$fnami
#debug spause
#
xmlstarlet depyx $fnami > $drnme/content.xml 
xmlstarlet val $drnme/content.xml
spause
ozip
# $|while read line; do echo $line; done
} # Test:
#
#* function gpyx - get content.xml as pyx
function gpyx(){
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
#
drnme=$var2; echo "Directory is "$drnme
fname=$var3; echo "fname is "$fname
# fnami=$var4; echo "fnami is "$fnami
#debug spause
xmlstarlet pyx $drnme/content.xml > ./$fname
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
#
#
#*###################################### MAIN ENTRY POINT AND COMPOUND CASE
#
# echo "mswf.sh v"$version" starts"
#* Evaluator Routine
# the evaluator must have 1 argument 
# Note the evaluator allows for many cases and error checking...
# ARGS=$#         # carries the number of args into the functions...
if [ "$#" -eq "3" ] && [ "$1" = "ounzip"   ]; then ARGS=$# ; fi
if [ "$#" -eq "3" ] && [ "$1" = "ozip"     ]; then ARGS=$# ; fi
if [ "$#" -eq "2" ] && [ "$1" = "val"      ]; then ARGS=$# ; fi
if [ "$#" -eq "2" ] && [ "$1" = "remt"     ]; then ARGS=$# ; fi
if [ "$#" -eq "2" ] && [ "$1" = "unzipt"   ]; then ARGS=$# ; fi
if [ "$#" -eq "4" ] && [ "$1" = "tpyx"     ]; then ARGS=$# ; fi
if [ "$#" -eq "1" ] && [ "$1" = "popgp"    ]; then ARGS=$# ; fi
if [ "$#" -eq "3" ] && [ "$1" = "gpyx"     ]; then ARGS=$# ; fi
if [ "$#" -eq "2" ] && [ "$1" = "pdfit"    ]; then ARGS=$# ; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"    ]; then ARGS=$# ; fi
if [ "$#" -eq "1" ] && [ "$1" = "uroot"    ]; then ARGS=$# ; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"   ]; then ARGS=$# ; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"     ]; then ARGS=$# ; fi
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
#debug echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
#debug rm -rf ss # removes super secret data file
#* restore environment
cd "$S"
