resource "azurerm_private_dns_a_record" "dns_record" {
  name                = lower(var.record_name)
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = var.records
  tags                = {for k, v in dns_arecord_tags : lower(k) => lower(v)} #var.dns_arecord_tags
}
