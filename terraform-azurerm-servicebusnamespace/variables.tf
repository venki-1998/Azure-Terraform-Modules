variable "servicebus_namespace_name" {
  type = string
  description =  "(Required) Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created."
}

variable "location" {
  type = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type = string
  description = "(Required) The name of the resource group in which to Changing this forces a new resource to be created. create the namespace."
}

variable "sku" {
  type = string
  description = "(Required) Defines which tier to use. Options are Basic, Standard or Premium. Please note that setting this field to Premium will force the creation of a new resource."
  default = "Premium"
}

variable "capacity" {
  type = string
  description = "(Optional) Specifies the capacity. When sku is Premium, capacity can be 1, 2, 4, 8 or 16. When sku is Basic or Standard, capacity can be 0 only."
}


variable "premium_messaging_partitions" {
  type = number
  description = "(Optional) Specifies the number messaging partitions. Only valid when sku is Premium and the minimum number is 1. Possible values include 0, 1, 2, and 4. Defaults to 0 for Standard, Basic namespace. Changing this forces a new resource to be created."
  default = 1
}


variable "identity_type" {
  type = string 
  default = "UserAssigned"
  description = "Specifies the type of Managed Service Identity that should be configured on this ServiceBus Namespace. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
}

variable "identity_ids" {
  type = list
  default = []
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this ServiceBus namespace."
}

variable "namespace_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource."
}

variable "key_vault_key_id" {
  type = string
  description = "The ID of the Key Vault Key which should be used to Encrypt the data in this ServiceBus Namespace."
  default = ""
}
