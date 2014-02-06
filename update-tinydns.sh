#!/bin/bash


DATAFILE="/var/tinydns/data/ddns"
SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "" > $DATAFILE
for HASH in $(ls -1 $SDIR/data); do
	. $SDIR/data/$HASH
	echo "+$DOMAIN:$IP:$TTL" >> $DATAFILE
done

/var/tinydns/bin/tinydns-compile
