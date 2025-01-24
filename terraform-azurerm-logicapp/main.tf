resource "azurerm_logic_app_standard" "logicapp" {
  name                       = var.logic_app_name
  location                   = var.location
  resource_group_name        = var.rg_name
  app_service_plan_id        = var.app_service_plan_id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  virtual_network_subnet_id  = var.virtual_network_subnet_id
  enabled = var.enabled
  https_only = var.https_only 
  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }
  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
   tags = {for k, v in logic_app_tags : lower(k) => lower(v)} #var.logic_app_tags

}
