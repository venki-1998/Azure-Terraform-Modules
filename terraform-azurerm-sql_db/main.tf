resource "azurerm_mssql_database" "Test_db" {
  name                = var.sql_database_name
  server_id           = var.server_id
  elastic_pool_id     = var.elastic_pool_id
  create_mode         = var.create_mode
  max_size_gb         = var.max_size_gb
  read_scale          = var.read_scale
  sku_name            = var.sku_name
  zone_redundant      = var.zone_redundant
  tags                = {for k, v in var.sqldb_tags : lower(k) => lower(v)} #var.sqldb_tags
}
