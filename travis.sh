#!/bin/bash

set -e
# Flags used here, not in `make html`:
#  -n   Run in nit-picky mode. Currently, this generates warnings for all missing references.
#  -W   Turn warnings into errors. This means that the build stops at the first warning and sphinx-build exits with exit status 1.
#  -N   Do not emit colors
#  -T   output full traceback
# --keep-going continue the processing after a warning
cd pkt
make images
cd ..
# English version
TMPDIR=$(mktemp -d)
if [ ! -d $TMPDIR ]; then
    >&2 "Could not create directory"
    exit 1
fi
mkdir $TMPDIR/en
sphinx-build -n -WNT --keep-going -b html . $TMPDIR/en
# French version
sphinx-build -D language='fr' -n -WNT --keep-going -b html . $TMPDIR/fr
# Chinese version
sphinx-build -D language='zh' -n -WNT --keep-going -b html . $TMPDIR/zh
#trap "exit 1"           HUP INT PIPE QUIT TERM
#trap 'rm -rf "$TMPDIR"' EXIT
