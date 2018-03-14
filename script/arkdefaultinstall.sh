#!/bin/bash
echo "running update"
sudo apt-get -y update

echo "downloading ark-deployer"
git clone https://github.com/ArkEcosystem/ark-deployer.git 

echo "downloading nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

echo "sourcing nvm and running install"
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc
nvm install 8.9.1
sudo apt-get install -y jq

#Variables for installations
PUBLICIP="$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')"
GLOBALIP="0.0.0.0"
CHAINNAME=MyTest
DATABASENAME=ark_mytest
CHAINTOKEN=MYTEST
CHAINSYMBOL=MCT
CHAINFORGERS=51
MAXVOTESPERWALLET=1
CHAINBLOCKTIME=8
CHAINTRANSPERBLOCK=50
REWARDSTART=75600
REWARDPERBLOCK=200000000
TOTALPREMINE=2100000000000000

echo "Beginning ark node installation"
~/ark-deployer/bridgechain.sh install-node --name $CHAINNAME --database $DATABASENAME --token $CHAINTOKEN --symbol $CHAINSYMBOL --node-ip $GLOBALIP --explorer-ip $PUBLICIP --forgers $CHAINFORGERS --max-votes $MAXVOTESPERWALLET --blocktime $CHAINBLOCKTIME --transactions-per-block $CHAINTRANSPERBLOCK --reward-height-start $REWARDSTART --reward-per-block $REWARDPERBLOCK --total-premine $TOTALPREMINE --autoinstall-deps --non-interactive

echo "Start-node for the new bridgechain"
~/ark-deployer/bridgechain.sh start-node --name $CHAINNAME --non-interactive

echo "installing explorer"
~/ark-deployer/bridgechain.sh install-explorer --name $CHAINNAME --token $CHAINTOKEN --node-ip $PUBLICIP --explorer-ip $PUBLICIP --skip-deps

echo "Changing IP address in ~/ark-explorer/start-explorer.sh to the all IPs"
sed -i "s/$PUBLICIP/$GLOBALIP/g" ~/ark-explorer/start-explorer.sh

echo "Starting ark explorer"
~/ark-deployer/bridgechain.sh start-explorer

echo "Ark explorer is now started at http://$PUBLICIP:4200 - Give it a couple of minutes to start up!"
