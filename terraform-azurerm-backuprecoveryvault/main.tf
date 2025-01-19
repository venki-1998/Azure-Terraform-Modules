resource "azurerm_recovery_services_vault" "backup_recovery_vault" {
  name                = var.recovery_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  public_network_access_enabled = var.public_network_access_enabled
  tags = {for k, v in var.rv_tags : lower(k) => lower(v)} #var.rv_tags
}
