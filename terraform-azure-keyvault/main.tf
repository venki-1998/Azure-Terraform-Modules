resource "azurerm_key_vault" "Test_KeyVault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = var.disk_encryption
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  enable_rbac_authorization   = var.enable_rbac_authorization
  sku_name = var.sku_name
  public_network_access_enabled = var.public_enabled
  tags = {for k, v in var.key_vault_tags : lower(k) => lower(v)}   #var.key_vault_tags
}
