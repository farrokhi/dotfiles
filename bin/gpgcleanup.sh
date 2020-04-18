#!/bin/bash
# Clean up the GPG Keyring.  Keep it tidy.
# blog.lavall.ee

echo -n "Expired Keys: "
for expiredKey in $(gpg -k | gawk '/^pub.* \[expired: / {id=$2; sub(/^.*\//, "", id); print id}' | fmt -w 999 ); do
    echo -n "$expiredKey"
    gpg --batch --quiet --yes --delete-keys $expiredKey >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo -n "(OK), "
    else
        echo -n "(FAIL), "
    fi
done
echo done.

echo -n "Update Keys: "
for keyid in $(gpg -k | grep ^pub | grep -v expired: | grep -v revoked: | cut -d/ -f2 | cut -d' ' -f1); do
    echo -n "$keyid"
    gpg --batch --quiet --edit-key "$keyid" check clean cross-certify save quit > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo -n "(OK), "
    else
        echo -n "(FAIL), "
    fi
done
echo done.

echo -n "Refreshing Keys: "
gpg --batch --quiet --refresh-keys > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Successful"
else
     echo "Failed"
fi

