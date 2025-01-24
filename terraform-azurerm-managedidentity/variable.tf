variable "identity_name" {
  type = string
  description = "(Required) Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created."
}

variable "resource_group_name" {
  type = string
  description = "(Required) Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
}

variable "location" {
  type = string
  description = "(Required) The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
}

variable "identity_tags" {
  type = map(any)
  default = {}
  description = "map of tags to be attached to resource"
}
