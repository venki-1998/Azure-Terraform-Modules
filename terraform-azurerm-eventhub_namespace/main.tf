resource "azurerm_eventhub_namespace" "myspace" {
  name                = var.namespace_name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  capacity            = var.capacity
  public_network_access_enabled = var.public_enabled
  zone_redundant = var.zone_redundant
  local_authentication_enabled = var.local_authentication_enabled
   identity {
    type         = var.type
    identity_ids = var.identity_ids
  }
  tags                ={for k, v in var.eventhub_tags : lower(k) => lower(v)} #var.eventhub_tags
}

resource "azurerm_eventhub_namespace_customer_managed_key" "mycmk" {
  eventhub_namespace_id = azurerm_eventhub_namespace.myspace.id
  key_vault_key_ids     = var.key_vault_key_id
  user_assigned_identity_id = var.user_assigned_identity_id
}
