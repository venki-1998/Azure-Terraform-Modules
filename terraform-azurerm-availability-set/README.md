
# Azure Availability Set


This terraform configuration creates an Azure Availability Set on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-availability-set" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| availability_set_name | string
| avset_tags         | map(any)
| location          | string
| resource_group_name   | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| fault_domain_count  | string
| managed             | string

| update_domain_count | string


### Outputs:-


| Name |

|------|

avset_id

avset_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/availability_set).
