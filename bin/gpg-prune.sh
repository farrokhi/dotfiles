#!/bin/sh
#
# interactively removes public keys from local gpg keychain
#
for k in $(gpg -k | grep ^pub | cut -d/ -f2 | cut -d' ' -f1); do
    clear
    gpg -q -k ${k}
    gpg -q --delete-keys ${k}
done
