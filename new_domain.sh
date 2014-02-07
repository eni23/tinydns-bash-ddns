#!/bin/bash
UPDATE_URL="http://ddns.e23.ch/update";

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
WHIPTAIL=$(which whiptail)
if [[ -z "$WHIPTAIL" ]]; then
        WHIPTAIL=$(which dialog)
fi
if [[ -z "$WHIPTAIL" ]]; then
        echo "fail: whiptail or dialog not found"
        exit 1
fi


DOMAIN_CMD="$WHIPTAIL --inputbox 'Enter Domain' 8 78 $1 --title 'create new ddns'"
DOMAIN=$(echo $DOMAIN_CMD | bash 3>&1 1>&2 2>&3)

if [ -z $DOMAIN ]; then
	echo "no domain given"
	exit 0
fi;

TTL_CMD="$WHIPTAIL --inputbox 'Enter TTL (empty: 300)' 8 78 $2 --title 'create new ddns'"
TTL=$(echo $TTL_CMD | bash 3>&1 1>&2 2>&3)


if [ -z $TTL ]; then
	TTL="300"
fi;


HASH=$(dd if=/dev/urandom bs=1K count=2 2>/dev/null| md5sum | cut -d" " -f1)
NEWC="DOMAIN='$DOMAIN'\nIP='0.0.0.0'\nTTL='$TTL'"
echo -e $NEWC > $SDIR/data/$HASH
chown www-data:www-data $SDIR/data/$HASH
echo "done. "
echo "hash: $HASH"
echo "update-url: $UPDATE_URL/$HASH"
