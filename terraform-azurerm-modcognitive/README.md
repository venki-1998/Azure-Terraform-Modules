
# Azure Cognitive Account
This terraform configuration creates an  Azure Cognitive Account on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-modcognitive" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| kind | string

| location | string

| name | string

| rg_name | string

| subdomain | string

| tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|



### Outputs:-


| Name |

|------|

dns_zone_id

vault_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_account).
