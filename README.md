# Ark BridgeChain - Azure Guide

<p align="center">
    <img src="/banner.png" />
</p>

> Read full guide [here](https://blog.ark.io/ark-bridgechain-azure-guide-774f5fd63333) on how to setup ARK BridgeChain via Microsoft Azure

[![License: MIT](https://badgen.now.sh/badge/license/MIT/green)](https://opensource.org/licenses/MIT)

## Deployment

[![DEPLOY TO AZURE](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FArkEcosystem%2Fark-azure%2Fmaster%2Fazuredeploy.json)
[![VISUALIZE](http://armviz.io/visualizebutton.png)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fdavepinkawa%2Fazure-quickstart-templates%2Fmaster%2Fark-sidechain-on-ubuntu%2Fazuredeploy.json)

This template creates a Ubuntu VM with user-specified credentials. It then sets the PublicDNS name, creates a network security group for all Ark firewall settings, and leaves you with a fresh Ubuntu 16.04-LTS VM in less than 5 minutes.

```
FQDN:  PublicDNSname.datacenter-region.cloudapp.azure.com
```

Once the server is fully deployed, connect via SSH (PuTTY > PublicDNSName > Credentials) and then run:

```bash
curl -o- https://raw.githubusercontent.com/ArkEcosystem/ark-azure/master/script/arkdefaultinstall.sh | bash
```

After approximately 10 minutes of the script running, your Ark Node BridgeChain and Ark Explorer will be viewable at:

```
http://publicIP:4200
```

## Security

If you discover a security vulnerability within this project, please send an e-mail to security@ark.io. All security vulnerabilities will be promptly addressed.

## Authors
- [Dave Pinkawa](https://github.com/davepinkawa)
- [Alex Barnsley](https://github.com/alexbarnsley)
- [All Contributors](../../contributors)

## License
[MIT](LICENSE) © [ArkEcosystem](https://ark.io)
