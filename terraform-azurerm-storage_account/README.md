# Azure Storage Account

This terraform configuration creates an Azure Storage Account on Azure

### Refer below template for deployment:-

<pre>

module "terraform-azurerm-storage_account" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| account_kind | list
| location |  string

| replication | string

| rg_name | string

| shared_access_key_enabled | bool

| storage_tags | map(any)

| storageaccountname | string

| tier | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| blob | map(object({}))

| container | map(object({}))

| fileshare | map(object({}))

| identity_ids | list

| identity_type | string

| is_hns_enabled | bool

| key_vault_key_id | string

| nested_public | bool

| network_rules | map(any)

| nfsv3_enabled | bool

| public_enabled | bool
| queue |  map(object({}))


### Outputs:-


| Name |

|------|

storage_access_key

storage_id

storage_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account).
