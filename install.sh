#!/bin/bash

sudo apt-get update

sudo apt-get install -y socat jq avahi-daemon apt-transport-https ca-certificates software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0eBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce

curl -sL https://raw.githubusercontent.com/home-assistant/hassio-build/master/install/hassio_install | sudo bash -

echo -e "\nSuccess!\n\n go to\n\nhttp://YOURSERVERIP:8123\n"
