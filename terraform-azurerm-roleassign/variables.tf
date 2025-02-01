variable "scope" {
  type = string
  description = "(Required) The scope at which the Role Assignment applies to, such as , /subscriptions/0b1f647xxxxxxxdda-aec3-xxxxxx/resourceGroups/myGroup, or /subscriptions/0b1f6qkqexxxxxxxxxxxxxxxx/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM, or /providers/Microsoft.Management/managementGroups/myMG. Changing this forces a new resource to be created."
}

variable "role" {
  type = string
  description = "The name of a built-in Role. Changing this forces a new resource to be created. Ex. Network Contributor, Reader, etc."
}

variable "principalid" {
  type = string
  description = " (Required) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created."
}z
