resource "azurerm_private_endpoint" "Test_PE" {
  name                = var.pe_name
  location            = var.location
  resource_group_name = var.rg_name
  subnet_id           = var.subnet_id
  custom_network_interface_name = var.nic_name
  private_service_connection {
    name                           = var.service_name
    private_connection_resource_id = var.resource_id
    is_manual_connection           = var.manual_connection
    subresource_names = var.subresource_names
  }
  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name = ip_configuration.value["name"]
      private_ip_address = ip_configuration.value["ip_address"]
      member_name = ip_configuration.value["member_name"]
      subresource_name = ip_configuration.value["subresource_name"]
    }
  }
  private_dns_zone_group  {
    name  = var.dns_group_name
    private_dns_zone_ids = var.dnszoneid
  }
  tags = {for k, v in var.pe_tags : lower(k) => lower(v)} #var.pe_tags
}
