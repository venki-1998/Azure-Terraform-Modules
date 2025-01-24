output "linuxvm_name" {
  value = azurerm_linux_virtual_machine.linuxvm[*].name
}

output "linuxvm_id" {
  value = azurerm_linux_virtual_machine.linuxvm[*].id
}
