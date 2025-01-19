
# Azure Key Vault

This terraform configuration creates an Azure Key Vault on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azure-keyvault" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| disk_encryption            | string
| enable_rbac_authorization  | string
| key_vault_name             | string
| key_vault_tags             | string
| location                   | string
| public_enabled             | map(any)
| purge_protection_enabled   | string
| rg_name              | string
| sku_name             | string

| soft_delete_retention_days | string
| tenant_id                  | string


### Outputs:-


| Name |

|------|

key_vault_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault).
