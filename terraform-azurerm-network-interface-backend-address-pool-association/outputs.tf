output "Bepoolassociation_id" {
  value = azurerm_network_interface_backend_address_pool_association.Bepoolassociation[*].id
  description = "The id of Bepoolassociation."
}
