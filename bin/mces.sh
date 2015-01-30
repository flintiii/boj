#!/usr/bin/expect -f
spawn /usr/bin/cadaver http://docbox.flint.com:1980/
expect "Username:"
send "the\n"
expect "Password:"
send "end\n"
expect "dav:"
send "copy ZiddlyWiki cardboard\n"
expect "dav:"
send "quit\n"
