#!/bin/bash
SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
grep -Ri "$1" "$SDIR/data/" | cut -d'/' -f6 | cut -d':' -f1
