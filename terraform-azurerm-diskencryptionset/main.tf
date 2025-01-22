resource "azurerm_disk_encryption_set" "des" {
  name                = "${var.encryption_name}"
  resource_group_name = var.resource_group_name 
  location            = var.location
  key_vault_key_id    = var.key_vault_key_id
  identity {
    type = var.identity
  }
  tags = {for k, v in var.encryption_tags : lower(k) => lower(v)} #var.encryption_tags
}
