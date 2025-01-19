
# Azure Kubernetes-Cluster-Node-Pool


This terraform configuration creates an Azure Kubernetes-Cluster-Node-Pool on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-aksnodepool" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| agent_count | number

| aks_tags | map(any)

| cluster_id | string

| enable_auto_scaling | bool

| max_count | number

| max_pods | number

| min_count | number

| node_pool_name | string

| os_disk_size_gb | string

| vm_size | string

| vnet_subnet_id | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|

| mode | string

| node_taints | list


### Outputs:-


| Name |

|------|

node_pool_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool).
