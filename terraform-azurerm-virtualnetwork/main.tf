resource "azurerm_virtual_network" "TEST_VNET" {
    name                = "${var.vnet_name}"
    location            = var.location
    resource_group_name = var.resource_group_name
    address_space       = var.address_space
    dns_servers         = var.dns_servers
    tags                = {for k, v in var.vnet_tags : lower(k) => lower(v)} #var.vnet_tags
}
