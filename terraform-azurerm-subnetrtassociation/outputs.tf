output "associationout_id" {
  value = azurerm_subnet_route_table_association.rtassociation[*].id
}
