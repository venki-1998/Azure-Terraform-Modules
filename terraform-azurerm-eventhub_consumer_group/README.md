
# Azure EventHub Authorization Consumer Group


This terraform configuration creates an  Azure EventHub Authorization Consumer Group on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-eventhub_consumer_group" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| consumer_group_name | string

| eventhub_name | string

| namespace_name string

| rg_name | string


### Outputs:-


| Name |

|------|

eventhub_group_id

eventhub_group_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_consumer_group).
