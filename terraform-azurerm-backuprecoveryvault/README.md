
# Azure Recovery Services Vault


This terraform configuration creates an Azure Recovery Services Vault on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-backuprecoveryvault" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| location | string

| recovery_vault_name | string

| resource_group_name | string

| rv_tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| public_network_access_enabled | string

| sku | string


### Outputs:-


| Name |

|------|

backup_rv_out


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/recovery_services_vault).
