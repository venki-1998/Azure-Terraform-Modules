# Azure Container Registry


This terraform configuration creates an Azure Container Registry on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-containerregistry" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| acr_name          | string
| acr_tags        | map(any)
| admin_enabled              | string
| clientid            | string
| identityids  | list(string)
| keyid                 | string
| location       | string
| resource_group_name                      | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| georeplications | map

| identitytype | string

| sku | string


### Outputs:-


| Name |

|------|

acr_id

acr_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry).
