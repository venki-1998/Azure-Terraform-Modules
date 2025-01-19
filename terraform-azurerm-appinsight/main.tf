resource "azurerm_application_insights" "app_insight" {
  name                = var.insight_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
  retention_in_days = var.retention_in_days
  sampling_percentage = var.sampling_percentage
  workspace_id = var.workspace_id
  local_authentication_disabled = var.local_authentication_disabled
  internet_ingestion_enabled = var.internet_ingestion_enabled
  internet_query_enabled = var.internet_query_enabled
  force_customer_storage_for_profiler = var.force_customer_storage_for_profiler
  tags  = {for k, v in var.tags : lower(k) => lower(v)} #var.tags
}
