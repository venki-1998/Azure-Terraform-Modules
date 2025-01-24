resource "azurerm_monitor_metric_alert" "metric_alert" {
  name                = var.metric_alert_name
  resource_group_name = var.rg_metric_alert
  scopes              = var.scopes
  target_resource_type = var.target_resource_type
  target_resource_location = var.target_resource_location
  description         = "Action will be triggered when Transactions count is greater than 50."

 criteria {
  metric_namespace = var.metric_namespace
  metric_name      = var.metric_name
  aggregation      = var.aggregation
  operator         = var.operator
  threshold        = var.threshold
    }
  action {
    action_group_id = var.action_group_id
  }
  tags = {for k, v in var.metric_alert_tags : lower(k) => lower(v)}
  }
     
