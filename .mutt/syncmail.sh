#!/bin/sh

# Populate a list of folder for mutt
mbsync -l -a | egrep -v '^(Snoozed$|Notes$|Calendar$|Tasks$|Journal$|Contacts$|Old Archive)' | awk '{printf "\"=%s\" ", $0}' > ~/Mail/mailboxes

# Synchronize mailbox
mbsync -a
