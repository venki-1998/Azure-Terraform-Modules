resource "azurerm_network_interface_backend_address_pool_association" "Bepoolassociation" {
  network_interface_id    = var.nic_id
  ip_configuration_name   = var.ip_config_name
  backend_address_pool_id = var.backend_address_pool_id
}
