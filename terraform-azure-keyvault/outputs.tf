output "key_vault_id" {
  value = azurerm_key_vault.Test_KeyVault[*].id
}
