
# Azure Data Factory


This terraform configuration creates an  Azure Data Factory on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-datafactory" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| adf_tags             | map(any)

| azurerm_data_factory_name | string
| identity_ids             | list
| location            | string
| resource_group_name       | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| identity_type         | string

| private_endpoint_name | string
| public_enabled        | bool


### Outputs:-


| Name |

|------|

adf_id

adf_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory).
