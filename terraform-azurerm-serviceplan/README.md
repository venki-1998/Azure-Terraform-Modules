# Azure Service Plan

This terraform configuration creates an Azure Service Plan on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-serviceplan" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| location            | string
| os_type            | string

| resource_group_name | string
| service_plan_name   | string
| service_plan_tags   | map(any)
| sku_name            | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| per_site_scaling_enabled | string


### Outputs:-


| Name |

|------|

service_plan_id

service_plan_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan).
