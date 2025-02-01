resource "azurerm_servicebus_namespace" "Test_Sn" {
  name                = var.servicebus_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  public_network_access_enabled  = false
  sku                 = var.sku
  capacity            = var.capacity
  premium_messaging_partitions = var.premium_messaging_partitions
  identity {
    type                   = var.identity_type
    identity_ids         = var.identity_ids    #if type=userassigned need to mention
  }
  customer_managed_key {
    key_vault_key_id = var.key_vault_key_id
    identity_id = var.identity_ids[0]
  }
  tags = {for k, v in var.namespace_tags : lower(k) => lower(v)} #var.namespace_tags
}
