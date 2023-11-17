#!/bin/bash

# Check if the montap interface does not exist
if ! ip link show montap > /dev/null 2>&1; then
    # If montap doesn't exist, proceed with the setup
    ip link set dev wlan1 down
    ip link set wlan1 name montap
    iw dev montap interface add wlan1 type managed

    ip link set dev montap down
    iw dev montap set type monitor
    ip link set dev montap up
else
    echo "The montap interface already exists. No changes made."
fi

#docker compose -f /home/spr/super/docker-compose.yml restart wifid

/usr/bin/nzyme-tap --configuration-file /etc/nzyme/nzyme-tap.conf --log-level info
