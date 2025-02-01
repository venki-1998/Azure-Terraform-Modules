resource "azurerm_route_table" "RT_Test" {
  name                          = "${var.rt_name}"
  location                      = var.location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = true
  dynamic "route" {
    for_each = merge(local.default_routes,var.routes)
    content {
      name           = route.value["name"]
      address_prefix = route.value["address_prefix"]
      next_hop_type  = route.value["next_hop_type"]
      next_hop_in_ip_address = route.value["next_hop_in_ip_address"]
    }
  }
  tags = {for k, v in var.rt_tags : lower(k) => lower(v)} #var.rt_tags
}
