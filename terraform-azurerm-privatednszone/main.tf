resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.resource_group_name
  tags                = {for k, v in var.dns_zone_tags : lower(k) => lower(v)} #var.dns_zone_tags
}
