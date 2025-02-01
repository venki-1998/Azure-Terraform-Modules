# Azure Storage Queue

This terraform configuration creates an Azure Storage Queue on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-storage_queue" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| storage_account_name | string

| storage_queue | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

storage_queue_id

storage_queue_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_queue).
