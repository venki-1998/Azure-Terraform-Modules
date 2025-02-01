
# Azure Storage Conatiner

This terraform configuration creates an Azure Storage Conatiner on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-storage_container" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>

### Required Inputs:-

These variables must be set in the module block when using this module.

| Name | Type |

|------|------|

| container_access| string

| storage_account_namelist|string

| storage_container| string


### Outputs:-

| Name |

|------|

container_id

container_name

For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container)
