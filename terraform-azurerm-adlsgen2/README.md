
# Azure Storage Data Lake Gen2 Filesystem


This terraform configuration creates an Azure  Storage Data Lake Gen2 Filesystem on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-adlsgen2" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| adls_name | string

| storage_account_id | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| ace            | string


### Outputs:-


| Name |

|------|

adls_id

adls_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_data_lake_gen2_filesystem).
