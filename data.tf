data "azurerm_marketplace_agreement" "MarketplaceAgreement" {
	publisher = local.MarketplaceImagePublisherId
	offer = local.MarketplaceImageOfferId
	plan = local.ImagePlanId
}

data "azurerm_ssh_public_key" "SshKey" {
	name = local.SshKeyName
	resource_group_name = local.ResourceGroupName
}