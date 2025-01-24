# Azure Linux Virtual Machine


This terraform configuration creates an Azure Linux Virtual Machine on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-linux-virtual-machine" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| disk | string

| image_id | string

| location | map(object({}))

| nic_id | list

| resource_group_name | string

| vm_name | string

| vm_tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| availability_set_id | string

| caching | string

| disk_encryption_set_id | string

| license_type | string

| network_access_policy | string

| password | string

| public_network_access_enabled | bool

| storage_acc_type | string

| username | string

| vm_size | string

| zone | string


### Outputs:-


| Name |

|------|

linuxvm_id

linuxvm_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine).
