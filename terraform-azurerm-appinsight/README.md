
# Azure App Insight


This terraform configuration creates an Azure App Insight on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-appinsight" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| application_type     | string
| insight_name         | string
| location          | string
| nic_name          | string
| resource_group_name   | string
| tags          | map(any)
| workspace_id         | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

|force_customer_storage_for_profiler | bool
| internet_ingestion_enabled         | bool
| internet_query_enabled             | bool
| local_authentication_disabled      | bool
| retention_in_days                  | number
| sampling_percentage                | number


### Outputs:-


| Name |

|------|

insight_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights).
