# Azure Application Gateway


This terraform configuration creates an  Azure Application Gateway on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-application_gateway" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| app_gateway_name     | string
| backend_address_pool     | map(any)

| backend_http_settings | map(any)
| capacity         | string
| frontend_port     | number
| frontend_port_name     | string
| frontend_subnet_id     | string
| http_listener     | map(any) 
| location          | string
| private_ip_address     | string
| request_routing_rule     | map(any)
| resource_group_name      | string
| sku_name         | string
| tier             | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| cookie_based_affinity         | string
| enable_http2                | bool

| private_ip_address_allocation | string
| probe             | map(any)
| ssl_profile             | map


### Outputs:-


| Name |

|------|

app_gateway_id

app_gateway_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_gateway).
