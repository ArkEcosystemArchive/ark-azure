#!/bin/bash
sudo apt-get -y update && sudo apt-get -y install jq libpq-dev build-essential libtool autoconf automake zip unzip htop nmon iftop pkg-config libcairo2-dev libgif-dev
sudo npm install forever@0.15.3 grunt-cli@1.2.0 node-sass@4.7.2 angular-cli@1.0.0-beta.28.3
git clone https://github.com/ArkEcosystem/ark-deployer.git /home/davidpinkawa/ark-deployer
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.profile
nvm install 8.9.1
sudo apt-get -y -qq install postgresql postgresql-contrib
