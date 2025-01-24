resource "azurerm_ip_group" "ip_group" {
  name                = var.ip_group_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  cidrs               = var.ip_group_cidr_range
  tags                = {for k, v in var.ipgrp_tags : lower(k) => lower(v)} #var.ipgrp_tags
}
