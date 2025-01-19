# Azure Backup Policy VM


This terraform configuration creates an Azure Backup Policy VM on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-backuppolicyvm" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| frequency           | string
| policy_name         | string

| recovery_vault_name | string

| resource_group_name | string
| retention_daily     | map(object({ count = string }))
| retention_monthly   | map(object({ count = string weekdays = list(string) weeks = list(string) }))
| retention_weekly    | map(object({ count = string weekdays = list(string) }))
| retention_yearly    | map(object({ count = string weekdays = list(string) weeks = list(string) months = list(string) }))


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| time     | string

| timezone | string


### Outputs:-


| Name |

|------|

policy_vm_out


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_policy_vm).
