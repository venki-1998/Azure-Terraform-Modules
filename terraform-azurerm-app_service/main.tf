resource "azurerm_windows_web_app" "app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.service_plan_id
  public_network_access_enabled = var.public_network_access_enabled
  https_only = var.https_only
  virtual_network_subnet_id = var.virtual_network_subnet_id
  logs {
    application_logs {
      file_system_level = var.file_system_level
    }
    detailed_error_messages = var.detailed_error_messages
    failed_request_tracing = var.failed_request_tracing
    http_logs {
      file_system {
        retention_in_days = var.retention_in_days
        retention_in_mb = var.retention_in_mb
      }
    }
  }
  site_config {
      vnet_route_all_enabled = var.vnet_route_all_enabled
      application_stack {
        current_stack = var.current_stack
        dotnet_version = var.current_stack == "dotnet" ? var.dotnet_version : null
        dotnet_core_version = var.current_stack == "dotnetcore" ? var.dotnet_core_version : null
        node_version = var.current_stack == "node" ? var.node_version : null
        python = var.current_stack == "python" ? var.python_app : false
        php_version = var.current_stack == "php" ? var.php_version : null
        java_embedded_server_enabled = var.java_embedded_server_enabled
        java_version = var.java_embedded_server_enabled == true ? var.java_version : null
        tomcat_version = var.java_embedded_server_enabled == false ? var.tomcat_version : null
      }
  }
  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }
  app_settings = var.app_settings
  dynamic "connection_string" {
    for_each = var.connection_string
    content {
      name  = connection_string.value["name"]
      type  = connection_string.value["type"]
      value = connection_string.value["value"]
    }
  }
  tags = {for k, v in var.app_service_tags : lower(k) => lower(v)} #var.app_service_tags
}

resource "azurerm_app_service_custom_hostname_binding" "app_custom_hostname" {
  for_each = var.custom_hostname
    hostname            = each.value["domain"]
    app_service_name    = azurerm_windows_web_app.app_service.name
    resource_group_name = var.resource_group_name
}
