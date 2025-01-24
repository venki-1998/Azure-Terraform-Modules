variable "nic_id" {
type = string
description = "The ID of the Network Interface. Changing this forces a new resource to be created."
}

variable "ip_config_name" {
type = string
description = "The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created."
}

variable "backend_address_pool_id" {
type = string
description = "The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created"
}
