# Azure Servicebus Namespace

This terraform configuration creates an Azure Servicebus Namespace on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-servicebusnamespace" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| capacity             | string
| location              | string
| namespace_tags         | map(any)
| resource_group_name       | string

| servicebus_namespace_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| identity_ids     | list
| identity_type    | string

| key_vault_key_id | string
| sku              | string


### Outputs:-


| Name |

|------|

namespace_id

namespace_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace).
