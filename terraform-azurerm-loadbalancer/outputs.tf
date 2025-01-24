output "lb_name" {
  value = azurerm_lb.privatelb[*].name
  description = "The Load Balancer name."
}

output "lb_id" {
  value = azurerm_lb.privatelb[*].id
  description = "The Load Balancer ID."
}
