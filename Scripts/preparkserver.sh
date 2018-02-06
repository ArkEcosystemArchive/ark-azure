#!/bin/bash
sudo apt-get -y update && sudo apt-get -y install jq postgresql postgresql-contrib libpq-dev build-essential libtool autoconf automake zip unzip htop nmon iftop pkg-config libcairo2-dev libgif-dev
git clone https://github.com/ArkEcosystem/ark-deployer.git && cd ark-deployer
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.profile
nvm install 8.9.1
./sidechain.sh install-node --name MyTest --database ark_mytest --token MYTEST --symbol MT