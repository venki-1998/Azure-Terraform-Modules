variable "nsg_id" {
  type = string
  description = "(Required) The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created."
}

variable "subnet_id" {
  type = string
  description = "(Required) The ID of the Subnet. Changing this forces a new resource to be created."
}
