#!/bin/sh

delay=`tcping -h $1 -p 80 -c 5  -i 0.2 | awk -F '/' '{print $4}' | grep -v ^$`
printf "$1\t$delay\n"