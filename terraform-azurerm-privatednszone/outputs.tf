output "dns_zone_name" {
  value = azurerm_private_dns_zone.dns_zone[*].name
}

output "dns_zone_id" {
  value = azurerm_private_dns_zone.dns_zone[*].id
}
