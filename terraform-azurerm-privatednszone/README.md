# Azure Private DNS Zone

This terraform configuration creates an Azure Private DNS Zone on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-privatednszone" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| dns_zone_name | string

| resource_group_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

dns_zone_id

dns_zone_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone).
