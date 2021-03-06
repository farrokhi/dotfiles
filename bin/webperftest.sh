#!/bin/sh

LOOP_MAX=50

WEBSITE=${1}
DELAY=${2}

trap 'echo "Cleaning up"; wait ; exit' INT TERM EXIT

[ -z ${WEBSITE} ] && exit 1
[ -z ${DELAY} ] && DELAY=1

while :; do
    curl -s -o /dev/null -w "Lookup: %{time_namelookup}\t Connect: %{time_connect}\t Pre-transfer: %{time_pretransfer}\t TTFB: %{time_starttransfer}\t Total time: %{time_total} \n" ${1} 
    sleep ${DELAY}
done

