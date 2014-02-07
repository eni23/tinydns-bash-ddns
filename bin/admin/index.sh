#!/bin/bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RDIR=$(dirname $(dirname  $SDIR))


echo Content-type: text/html
echo ""


DOMLIST=""
for HASH in $(ls -1 $RDIR/data/); do
   . /$RDIR/data/$HASH
   TPL=$(cat $SDIR/tpl/list-entry.tpl | sed "s/{domain}/$DOMAIN/g"  \
                                       | sed "s/{hash}/$HASH/g" \
                                       | sed "s/{ip}/$IP/g" \
                                       | sed "s/{ttl}/$TTL/g" )
   DOMLIST="$DOMLIST$TPL"
done;


STR=$(cat $SDIR/tpl/main.tpl)



STRN=$( echo ${STR/\{domlist\}/$DOMLIST} )
echo ${STRN/\{message\}/$MESSAGE}

