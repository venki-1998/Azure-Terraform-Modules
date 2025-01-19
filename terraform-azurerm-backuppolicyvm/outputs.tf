output "policy_vm_out" {
    value = azurerm_backup_policy_vm.backup_policy[*].id
}
