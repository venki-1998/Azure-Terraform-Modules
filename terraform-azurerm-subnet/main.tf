resource "azurerm_subnet" "Subnet_TEST" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_address
  service_endpoints    = var.service_endpoints
  private_endpoint_network_policies_enabled = var.private_endpoint_network_policies_enabled
  dynamic "delegation" {
    for_each = var.delegation
    content {
      name = delegation.value["delegation_name"]
      service_delegation {
        name    = delegation.value["service_name"]
        actions = delegation.value["delegation_action"]
      }
    }
  }
}
