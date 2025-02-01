# Azure Redhat Openshift


This terraform configuration creates an Azure Redhat Openshift on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-redhatopenshift" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| aro_tags | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| blapi_server_visibility | string

| aro_name | string

| aro_version | string

| client_id | string

| client_secret | string

| deployment_mode | string

| domain | string

| fipsValidatedModules | string

| ingress_profile_name | string

| ingress_visibility | string

| master_disk_encryption | string
| master_encryption |  string

| master_subnet_id | string

| master_vmsize | string

| outbound_type | string

| pod_cidr | string

| resource_group_name | string

| rg_id | string

| service_cidr | string

| worker_count | number

| worker_disk_encryption | string

| worker_disk_size | number

| worker_encryption | string

| worker_name | string

| worker_subnet_id | string

| worker_vm_size | string


### Outputs:-


| Name |

|------|

aro_cluster


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group_template_deployment).
