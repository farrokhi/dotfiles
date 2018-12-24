#!/bin/sh
set -u

ROUTES=~/bin/route-list.txt

if [ ! -r ${ROUTES} ]; then
    echo "Failed to read routes list from ${ROUTES}"
    exit 1
fi

GW=$(netstat -rn | grep ^default | grep UGSc | awk '{print $2}')
RLIST=$(cat ${ROUTES})

for R in ${RLIST}; do
    printf "[*] %-30s -> ${GW} " ${R}
    printf "[Delete] "
    sudo route delete -net ${R} > /dev/null 2>&1
    printf "[Add] "
    sudo route add -net ${R} ${GW} > /dev/null
    printf "[Done]\n"
done

