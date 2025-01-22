resource "azurerm_data_factory" "data_factory" {
  name                = var.azurerm_data_factory_name
  location            = var.location
  resource_group_name = var.resource_group_name
  public_network_enabled = var.public_enabled
  tags                   = {for k, v in var.adf_tags : lower(k) => lower(v)} #var.adf_tags
  identity {
      type         = var.identity_type
      identity_ids = var.identity_ids
  }
}
