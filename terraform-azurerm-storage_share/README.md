# Azure Storage Share

This terraform configuration creates an Azure Storage Share on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-storage_share" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| access_tier | string

| quota | string

| share_name | string

| storage_account_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

storage_share_id

storage_share_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_share).
