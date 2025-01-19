
# Azure Backup Protected VM


This terraform configuration creates an Azure Backup Protected VM on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-backup_protected_vm" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| backup_policy_id    | string

| recovery_vault_name | string

| resource_group_name | string
| source_vm_id          | string


### Outputs:-


| Name |

|------|

vm_protection


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/backup_protected_vm).
