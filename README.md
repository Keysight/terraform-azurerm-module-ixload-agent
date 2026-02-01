# module-ixload-agent/azurerm

## Description
Terraform module for IxLoad agent deployment on Microsoft Azure

## Deployment
This module creates a single instance having two network interfaces.

## Usage
```tf
module "Agent" {
	source  = "git::https://github.com/Keysight/terraform-azurerm-module-ixload-agent.git"
	Eth0SubnetId = module.Vnet.PublicSubnet.id
	Eth1SubnetId = module.Vnet.PrivateSubnet.id
	ResourceGroupName = azurerm_resource_group.ResourceGroup.name
	SshKeyName = azurerm_ssh_public_key.SshKey.name
}
```
