
# Azure App Service


This terraform configuration creates an Azure App Service on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-app_service" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| app_service_name          | string
| current_stack             | string
| dotnet_core_version       | string
| dotnet_version            | string
| identity_type             | string
| java_version              | string
| location                  | string
| node_version              | string
| php_version               | string
| resource_group_name       | string
| service_plan_id           | string
| tomcat_version            | string

| virtual_network_subnet_id | string
| app_service_tags          | map(any)
| app_settings              | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| connection_string             | map
| custom_hostname               | map(object({ domain = string }))
| detailed_error_messages       | bool
| failed_request_tracing        | bool
| file_system_level             | string
| https_only                    | bool
| identity_ids                  | list
| java_embedded_server_enabled  | bool

| public_network_access_enabled | bool
| python_app                    | bool
| retention_in_days             | string
| retention_in_mb               | string
| vnet_route_all_enabled        | bool


### Outputs:-


| Name |

|------|

service_app_id

service_app_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service).
