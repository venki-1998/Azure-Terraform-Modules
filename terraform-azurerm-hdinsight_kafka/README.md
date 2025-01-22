
# Azure Hd Insight Kafka Clustre


This terraform configuration creates an Azure Hd Insight Kafka Clustre on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-hdinsight_kafka" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| cluster_name | string

| cluster_version | string

| gateway_password | string

| gateway_username | bool

| head_node | map(any)

| is_default | bool

| kafka_version | string

| location | string

| resource_group_name | string

| storage_account_key | string

| storage_container_id | string

| tier | string

| worker_node | map(any)

| zookeeper_node | map(any)


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

https_endpoint

kafka_id

kafka_name


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/hdinsight_kafka_cluster).
