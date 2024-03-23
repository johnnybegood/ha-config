[![Commit Activity](https://img.shields.io/github/commit-activity/w/johnnybegood/ha-config?color=f58153)](https://github.com/johnnybegood/ha-config/pulse)
[![Last Commit](https://img.shields.io/github/last-commit/johnnybegood/ha-config?color=purple)](https://github.com/johnnybegood/ha-config/commits/main)

# Home Assistant Configuration
My [Home Assistant](https://www.home-assistant.io/) configuration:
- Hub: Raspberry Pi 5
- Zigbee: [SkyConnect](https://www.home-assistant.io/skyconnect/)
- Control center: [NSPanel Pro](https://itead.cc/product/sonoff-nspanel-pro-smart-home-control-panel/) with [Fully Kiosk](https://www.fully-kiosk.com/)
- Audio: [Logitech Media Server addon](https://github.com/pssc/ha-addon-lms/) for multi-room media control
- CCTV: [Frigate](https://frigate.video/) with ReoLink security cameras.
- Heating: [EvoHome](https://www.resideo.com/nl/nl/oplossingen/comfort/evohome/)

## Export
To export the current version of the config, run `./scripts/read.sh HOSTNAME` with the IP or hostname of the HA instance to export. Current content of the config folder will be deleted.

Export requires [yq](https://github.com/mikefarah/yq/#install) to be installed.
