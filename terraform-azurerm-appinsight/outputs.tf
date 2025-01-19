output "insight_id" {
    value = azurerm_application_insights.app_insight[*].id
}
