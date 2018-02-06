# Very simple deployment of a Linux VM

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-vm-simple-linux%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-vm-simple-linux%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>


This template allows you to deploy a simple Linux VM using the latest patched version. This will deploy an A1 size VM in the resource group location you specify. 

Steps to take to get an Ark Node up and running once logged into your arkadmin account:
- Connect to the server via its FQDN and login(<DNSName>.<datacenter-region>.cloudapp.azure.com)
- Run 
/home/arkadmin/ark-deployer/sidechain.sh install-node --name MyTest --database ark_mytest --token MYTEST --symbol MT

To start node: /home/arkadmin/ark-deployer/sidechain.sh start-node --name MyTest

