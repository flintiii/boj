#!/bin/bash
# pflint Mon 12 Jan 2015 07:21:46 AM EST  
# 
# packs expect and sends it out...
# From this line to EOF is the code to export
# note slash escapes (\\)
read -d '' String <<"EOF"
#!/usr/bin/expect -f
set tiddleurl [lindex $argv 0]
set user      [lindex $argv 1]
set pass      [lindex $argv 2]
set proj      [lindex $argv 3]
# check...
if { $user == "" || $pass == "" || $tiddleurl == "" || $proj == "" }  
{
  puts "Usage: <user> <pass> <tiddleurl> <proj> \n"
  exit 1
}
spawn /usr/bin/cadaver http://$tiddleurl/
expect "Username:"
send "$user\\n"
expect "Password:"
send "$pass\\n"
expect "dav:"
send "copy ZiddlyWiki	 $proj\\n"
expect "dav:"
send "quit\\n"
EOF
# echo "this is the string"
echo "$String" > doit.exp
chmod +x doit.exp
# ./doit.exp docbox.flint.com:1980 the end banana > /dev/null
# debug 
# rm -rf doit.exp
#
