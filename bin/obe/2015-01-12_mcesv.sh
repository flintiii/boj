#!/bin/bash
echo $#
tiddleurl=$1
uid=$2
pass=$3
proj=$4
# echo $tiddleurl, $uid, $pass, $proj
# exit
# #!/usr/bin/expect -f
(/usr/bin/expect -c '
spawn /usr/bin/cadaver http://$tiddleurl/
expect "Username:"
send "the\n"
expect "Password:"
send "end\n"
expect "dav:"
send "copy ZiddlyWiki $proj\n"
expect "dav:"
send "quit\n"
')
