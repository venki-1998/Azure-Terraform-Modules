variable "rg_name" {
  description = "The name of the resource group in which to create event hub. Changing this forces a new resource to be created."
  type = string
  default = "IBCI-UAT-TFE-RG01"
}

variable "namespace_name" {
  description = "(Required) Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created."
  type = string
  default = "Ibcitestnamespace01"
}

variable "eventhub_name" {
  description = "(Required) Specifies the name of the EventHub resource. Changing this forces a new resource to be created."
  type = string
  default = "myhub"
}

variable "authorization_rule_name" {
  description = "Authorization rules to add to the namespace. For hub use `hubs` variable to add authorization keys."
  type = string
  default = "myrule1"
}

variable "listen" {
type = string
default = "true"
}

variable "send" {
type = string
default = "true"
}

variable "manage" {
type = string
default = "true"
}
