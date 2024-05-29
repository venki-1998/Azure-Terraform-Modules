# Azure Management Lock

This terraform configuration creates an  Azure Management Lock on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-resourcelock" {
  source  = ""
  # insert required variables here
}

</pre>

### Required Inputs:-

These variables must be set in the module block when using this module.

| Name | Type |

|------|------|
| lock_level  | string
| lock_name   | string
| notes       | string

| resource_id | string


### Outputs:-


| Name |

|------|

lock_id

For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock).
