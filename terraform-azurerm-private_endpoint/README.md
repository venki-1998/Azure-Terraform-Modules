# Azure Private Endpoint

This terraform configuration creates an Azure Private Endpoint on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-private_endpoint" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| dns_group_name | string

| dnszoneid | string

| location | string

| pe_name | map(any)

| pe_tags | map(any)

| resource_id | string

| rg_name | string

| service_name | string

| subnet_id | string

| subresource_names | list


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| ip_configuration | map(object({}))

| manual_connection | string

| nic_name | string


### Outputs:-


| Name |

|------|

pe_private_service_connection

private_end_point_id

private_end_point_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint).
