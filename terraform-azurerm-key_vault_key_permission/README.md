
# Azure Key Vault Key Permission


This terraform configuration creates an  Azure Key Vault Key Permission on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-key_vault_key_permission" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| key_permissions | list

| keyvault_id | string

| object_id | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| secret_permissions | list

| storage_permissions | list


### Outputs:-


| Name |

|------|

permission_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy).
