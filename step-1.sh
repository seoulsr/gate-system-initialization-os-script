#!/bin/bash

log_file="script_log.txt"

log() {
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] $1" >> "$log_file"
}

log "Running Initial OS step"
. ./1-initial-os.sh
log "Success Initial OS step"

log "Running Docker Installation step"
. ./2-docker-installation.sh
log "Success Docker Installation step"

sudo reboot