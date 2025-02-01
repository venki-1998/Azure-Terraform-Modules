output "SQLdb_name" {
  value = azurerm_mssql_database.Test_db[*].name
}

output "SQLdb_id" {
  value = azurerm_mssql_database.Test_db[*].id
}
