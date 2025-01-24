
# Azure Managed Disk


This terraform configuration creates an  Azure Managed Disk Standard

on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-managed_disk" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| account_type | string

| caching | string

| create_option | string

| disk_encryption_set_id | string

| disk_name | string

| disk_size_gb | number

| disk_tags | map(any)

| location | string

| lun | string

| resource_group_name | string

| vm_id | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| network_access_policy | string

| public_network_access_enabled | bool


### Outputs:-


| Name |

|------|

disk_id

disk_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/managed_disk).
