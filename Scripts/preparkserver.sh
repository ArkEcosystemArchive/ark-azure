#!/bin/bash
sudo -u arkadmin apt-get -y update && sudo apt-get -y install npm jq libpq-dev build-essential libtool autoconf automake zip unzip htop nmon iftop pkg-config libcairo2-dev libgif-dev
sudo -u arkadmin npm install forever@0.15.3 grunt-cli@1.2.0 node-sass@4.7.2 angular-cli@1.0.0-beta.28.3
sudo -u arkadmin git clone https://github.com/ArkEcosystem/ark-deployer.git /home/arkadmin/ark-deployer
sudo -u arkadmin touch ~/.bash_profile
sudo -u arkadmin curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
sudo -u arkadmin nvm install 8.9.1
sudo -u arkadmin apt-get -y install postgresql postgresql-contrib
