variable "public_enabled" {
  default ="false"
}

variable "zone_redundant" {
  default = "false"
  description = "Specifies if the EventHub Namespace should be Zone Redundant (created across Availability Zones). Changing this forces a new resource to be created. Defaults to false."
}

variable "namespace_name" {
  description = "(Required) Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created."
  type = string
}

variable "rg_name" {
  description = "The name of the resource group in which to create event hub. Changing this forces a new resource to be created."
  type = string
}

variable "location" {
  description = "(Required) The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
  type = string
}

variable "sku" {
  description = "(Optional) Specifies the name of the SKU used by the eventhub."
  type = string
}

variable "capacity" {
  description = "Specifies the Capacity / Throughput Units for a Standard SKU namespace. Valid values range from 1 - 20."
  type = string
  default = "1"

}

variable "local_authentication_enabled" {
  default = false
  description = "Is SAS authentication enabled for the EventHub Namespace? Defaults to false."
}

variable "eventhub_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map(any)
}

variable "key_vault_key_id" {
  description = "The list of keys of Key Vault."
  type = list
  default = []
}

variable "user_assigned_identity_id" {
  type = string
  default = ""
  description = "The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys."
}

variable "identity_ids" {
   type = list
   default = []
   description = "The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys."
}

variable "type" {
  type = string
  default = "UserAssigned"
  description = "The requried type of the identity."
}
  
  
