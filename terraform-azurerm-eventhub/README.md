
# Azure EventHub

This terraform configuration creates an Azure EventHub on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-eventhub" {
  source  = ""
  version = ""

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| eventhub_name | string

| message_retention | string

| namespace_name | string

| partition_count | string

| rg_name | string


### Outputs:-


| Name |

|------|

eventhub_id

eventhub_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub).
