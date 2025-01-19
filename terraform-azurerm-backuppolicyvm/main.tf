resource "azurerm_resource_group" "RG_Test" {
    name        = "${var.resource_group_name}"
    location    = var.location
    tags        = {for k, v in var.tags : lower(k) => lower(v)}
}
