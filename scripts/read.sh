#!/bin/bash
set -e

HOST=$1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
USER="root"

if [ -z "${HOST}" ]; then
    echo '[ERROR] HOST is required, run read.sh host' >&2
    exit 1
fi

echo "-------------------------------------------------------"
echo "[INFO] CLEAR EXISTING LOCAL CONFIG"
echo "-------------------------------------------------------"
cd $DIR
rm -rf ../config/ || true
mkdir ../config/

echo "-------------------------------------------------------"
echo "[INFO] COPY FROM ${HOST}"
echo "-------------------------------------------------------"
cd $DIR
scp -r $USER@$HOST:~/config/*.* ../config/

echo "-------------------------------------------------------"
echo "[INFO] REMOVING UNNEEDED FILES"
echo "-------------------------------------------------------"
cd ..
echo "Deleting files in gitignore"
git clean -fX