variable "availability_set_name" {
type = string
description = "Specifies the name of the availability set. Changing this forces a new resource to be created."
}

variable "location" {
type = string
description = "Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
type = string
description = "Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}

variable "managed" {
type = string
default = "true"
description = "Specifies whether the availability set is managed or not. Possible values are true (to specify aligned) or false (to specify classic). Default is true. Changing this forces a new resource to be created."
}

variable "fault_domain_count" {
type = string
default = "3"
description = "Specifies the number of fault domains that are used. Defaults to 3. Changing this forces a new resource to be created."
}

variable "update_domain_count" {
type = string
default = "5"
description =  "Specifies the number of update domains that are used. Defaults to 5. Changing this forces a new resource to be created."
}

variable "avset_tags" {
type = map(any)
description = "A map of tags to assign to the Virtual Machine."
}
