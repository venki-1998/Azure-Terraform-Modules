
# Azure Disk Encryption Set


This terraform configuration creates an  Azure Disk Encryption Set on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-diskencryptionset" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| encryption_name | string

| key_vault_key_id | string

| location | string

| resource_group_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| encryption_tags | map(any)

| identity | string


### Outputs:-


| Name |

|------|

des_id

des_name

des_principal


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/disk_encryption_set).
