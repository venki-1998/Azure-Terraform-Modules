
# Azure Managed Identity


This terraform configuration creates an  Azure Managed Identity Standard

on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-managedidentity" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| identity_name | string

| location | string

| resource_group_name | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| identity_tags | map(any)


### Outputs:-


| Name |

|------|

client_id

identity_id

identity_name

principal_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity).
