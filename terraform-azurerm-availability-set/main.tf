resource "azurerm_availability_set" "testavset" {
  name                = var.availability_set_name
  location            = var.location
  resource_group_name = var.resource_group_name
  platform_fault_domain_count = var.fault_domain_count
  platform_update_domain_count = var.update_domain_count
  managed = var.managed
  tags = {for k, v in var.avset_tags : lower(k) => lower(v)} #var.avset_tags
}
