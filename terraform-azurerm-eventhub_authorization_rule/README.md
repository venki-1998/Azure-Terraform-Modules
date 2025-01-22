
# Azure EventHub Authorization Rule


This terraform configuration creates an Azure EventHub Authorization Rule on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-eventhub_authorization_rule" {
  source  = ""
  version = ""
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| authorization_rule_name | string

| eventhub_name | string

| listen | string

| manage | string

| namespace_name | string

| rg_name | string

| send | string


### Outputs:-


| Name |

|------|

authorization_rule_id

authorization_rule_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventhub_authorization_rule).
