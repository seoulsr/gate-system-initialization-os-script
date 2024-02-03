#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

git clone https://github.com/seoulsr/gate-system-initialization-os-script.git
mv gate-system-initialization-os-script script
cd script
chmod +x ./step-1.sh
chmod +x ./step-2.sh
. ./step-1.sh

# git clone https://github.com/seoulsr/gate-system-event-handler
# git clone https://github.com/seoulsr/gate-system-mysql-server
# git clone https://github.com/chayanonsa/sync-bis-data
# git clone https://github.com/chayanonsa/weigand-reciever
# git clone https://github.com/chayanonsa/weigand-sender
# git clone https://github.com/chayanonsa/gate-system-display
# git clone https://github.com/chayanonsa/gate-system-start-up-browser

# Step
# 1. Copy root.sh and rename to main.sh
# 2. Copy project from host to raspberrypi
# 3. Start script main.sh
