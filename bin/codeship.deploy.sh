#!/bin/bash

HOMEDIR="/opt/katastr.io"
COMMIT=$(git log --oneline | head -n 1 | cut -d ' ' -f 1)

cd ~/clone

rsync -aqz ./* codeship@193.85.199.37:${HOMEDIR}/letsencrypt-${COMMIT} && \
ssh codeship@193.85.199.37 "find ${HOMEDIR} -maxdepth 1 -type d ! -name letsencrypt-${COMMIT} -name 'letsencrypt-*' -exec rm -rf '{}' \;"
