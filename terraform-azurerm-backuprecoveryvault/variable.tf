variable "recovery_vault_name" {
    type = string
    description = "Specifies the name of the Backup Recovery Vault Name. Changing this forces a new resource to be created."
}

variable "location" {
  type = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the Backup Recovery Vault. Changing this forces a new resource to be created."
}

variable "sku" {
  type = string
  default = "Standard"
  description = "(Required) The SKU name of the Backup Recovery Vault Name."
}

variable "public_network_access_enabled" {
  type = string
  default = "true"
  description = "The public network access will be default false"
}

variable "rv_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource"
}
