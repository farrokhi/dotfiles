#!/bin/sh
tmpfile="/tmp/iplist.tmp"
cc=IR
wget --no-check-certificate -q http://telefisk.org/blocker/cidr/${cc}.ipv4.txt -O ${tmpfile}
gzcat ${tmpfile} | awk '{print $1}' | awk -F '/' '{print $1,$2}'
