output "vm_protection" {
    value = azurerm_backup_protected_vm.vm1[*].id
}
