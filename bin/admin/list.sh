#!/bin/bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RDIR=$(dirname $(dirname  $SDIR))


echo Content-type: text/plain
echo ""


for hash in $(ls -1 $RDIR/data/); do
    echo $hash;
done;

