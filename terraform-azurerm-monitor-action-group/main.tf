resource "azurerm_monitor_action_group" "action_group" {
  name                = var.action_group_name
  resource_group_name = var.rg_action_group
  short_name          = var.short_name
  
email_receiver {
  name                    = var.receiver_name
  email_address           = var.email_address
  use_common_alert_schema = true
  }

tags = {for k, v in var.action_group_tags : lower(k) => lower(v)}
}
