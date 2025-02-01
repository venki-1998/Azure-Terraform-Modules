
# Azure Redis Cache


This terraform configuration creates an Azure Redis Cache on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-redis_cache" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| location             | string

| redis_cache_capacity | string
| redis_cache_family   | string
| redis_cache_name     | string
| redis_cache_tier     | string
| redisCache_tags      | map(any)
| resource_group_name  | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|
| public_enabled                  | bool

| redis_cache_enable_non_ssl_port | string
| redis_cache_maxmemory_delta     | string
| redis_cache_maxmemory_policy       | string
| redis_cache_maxmemory_reserved  | string

| redis_cache_minimum_tls_version | string


### Outputs:-


| Name |

|------|

redisCache_id

redisCache_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/redis_cache).
