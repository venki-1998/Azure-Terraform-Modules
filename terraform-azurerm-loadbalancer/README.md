
# Azure Load Balancer


This terraform configuration creates an  Azure Load Balancer on Azure

### Refer below template for deployment:-


<pre>

module "" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| backend_address_pools | map(object({ name = string }))

| lb_name | string

| lb_rule | map(object({ name = string protocol = string frontend_port = string backend_port = string }))

| location | string

| rg_name | string

| subnet_id | string

| tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| ip_allocation | string

| private_ip | string

| probe | map(object({ name = string port = string }))

| sku | string

| sku_tier | string


### Outputs:-


| Name |

|------|

lb_id

lb_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb).
