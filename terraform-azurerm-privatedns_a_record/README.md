# Azure Private DNS A Record

This terraform configuration creates an Azure Private DNS A Record on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-privatedns_a_record" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| record_name | string

| records | list

| resource_group_name | string

| ttl | number

| zone_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

dns_record_id

dns_record_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_a_record).
