output "backup_rv_out" {
    value = azurerm_recovery_services_vault.backup_recovery_vault[*].id
}
