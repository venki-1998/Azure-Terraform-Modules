resource "azurerm_lb" "privatelb" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  sku_tier            = var.sku_tier

  frontend_ip_configuration {
    name                          = "${var.lb_name}-PrivateFrontEndIPv4"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.ip_allocation
    private_ip_address            = var.private_ip
  }
   tags = {for k, v in var.tags : lower(k) => lower(v)} #var.tags
}

resource "azurerm_lb_backend_address_pool" "lbpool" {
    for_each = var.backend_address_pools
      loadbalancer_id = azurerm_lb.privatelb.id
      name            = each.value["name"]
}

resource "azurerm_lb_probe" "lbprobe" {
    for_each = var.probe
      loadbalancer_id = azurerm_lb.privatelb.id
      name            = each.value["name"]
      port            = each.value["port"]
}

resource "azurerm_lb_rule" "lbrule" {
    for_each = var.lb_rule
      loadbalancer_id                = "${azurerm_lb.privatelb.id}"
      probe_id                       = "${azurerm_lb_probe.lbprobe[each.key].id}"
      backend_address_pool_ids       = [azurerm_lb_backend_address_pool.lbpool[each.key].id]
      name                           = each.value["name"]
      protocol                       = each.value["protocol"]
      frontend_port                  = each.value["frontend_port"]
      backend_port                   = each.value["backend_port"]
      frontend_ip_configuration_name = "${var.lb_name}-PrivateFrontEndIPv4"
}
