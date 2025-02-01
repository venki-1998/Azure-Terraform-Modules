# Azure App Service Virtual Network Swift Connection

This terraform configuration creates an Azure App Service Virtual Network Swift Connection on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-swiftconnection" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| app_service_id | string

| subnet_id | string


### Outputs:-


| Name |

|------|

vnetintegration


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_virtual_network_swift_connection).
