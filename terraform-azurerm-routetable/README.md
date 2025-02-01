# Azure Route Table

This terraform configuration creates an Azure Route Table on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-routetable" {
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

| resource_group_name | string

| routes | map(object({}))

| rt_name | string

| rt_tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

rt_id

rt_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table).
