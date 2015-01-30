#!/bin/bash
# pflint Mon 12 Jan 2015 07:21:46 AM EST  
# packs expect and sends it out...
# 
# From this line to EOF is the code to export
read -d '' String <<"EOF"
#!/usr/bin/expect -f
set tiddleurl [lindex $argv 0]
set user      [lindex $argv 1]
set pass      [lindex $argv 2]
set proj      [lindex $argv 3]
spawn /usr/bin/cadaver http://$tiddleurl/
expect "Username:"
send "$user\\n"
expect "Password:"
send "$pass\\n"
expect "dav:"
send "rmcol $proj\\n"
expect "dav:"
send "quit\\n"
EOF
# echo "this is the string"
echo "$String" > test.exp
chmod +x test.exp
./test.exp docbox.flint.com:1980 the end banana
# debug rm -rf test.exp
#
