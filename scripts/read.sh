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
rm -rf ../dashboards/ || true
mkdir ../config/
mkdir ../dashboards/

echo "-------------------------------------------------------"
echo "[INFO] COPY FROM ${HOST}"
echo "-------------------------------------------------------"
cd $DIR
scp $USER@$HOST:~/config/*.* ../config/
scp $USER@$HOST:~/config/.HA_VERSION ../config/
scp $USER@$HOST:~/config/.storage/lovelace ../dashboards/lovelace.json
scp $USER@$HOST:~/config/.storage/lovelace.dashboard_kiosk ../dashboards/kiosk.json

echo "-------------------------------------------------------"
echo "[INFO] CONVERT LOVELACE TO YAML"
echo "-------------------------------------------------------"
cd ../dashboards
yq -P '.data.config' -o yaml lovelace.json > lovelace.yaml
yq -P '.data.config' -o yaml kiosk.json > kiosk.yaml
echo "Delete JSON variant"
rm lovelace.json
rm kiosk.json
