#!/bin/bash

log_file="script_log.txt"

log() {
    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$timestamp] $1" >> "$log_file"
}

log "Running Chrome Installation step"
. ./3-chrome-installation.sh
log "Success Chrome Installation step"

#log "Running Git Clone step"
#. ./4-git-clone.sh
#log "Success Git Clone step"

log "Running Docker Container Up step"
. ./5-up-container.sh
log "Success Docker Container Up step"

log "Success All step"