[![Commit Activity](https://img.shields.io/github/commit-activity/w/johnnybegood/ha-config?color=f58153)](https://github.com/johnnybegood/ha-config/pulse)
[![Last Commit](https://img.shields.io/github/last-commit/johnnybegood/ha-config?color=purple)](https://github.com/johnnybegood/ha-config/commits/main)

# Home Assistant Configuration
My [Home Assistant](https://www.home-assistant.io/) configuration, running on Raspberry Pi 4 with a [RaspBee II](https://phoscon.de/en/raspbee2).

## Export
To export the current version of the config, run `./scripts/read.sh HOSTNAME` with the IP or hostname of the HA instance to export. Current content of the config folder will be deleted.

Export requires [yq](https://github.com/mikefarah/yq/#install) to be installed.
