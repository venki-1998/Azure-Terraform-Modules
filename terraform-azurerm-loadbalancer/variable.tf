variable "lb_name" {
    type = string
    description = "Specifies the name of the Load Balancer. Changing this forces a new resource to be created."
    nullable = false
}

variable "rg_name" {
    type = string
    nullable = false
    description = "The name of the Resource Group in which to create the Load Balancer. Changing this forces a new resource to be created."
}

variable "location" {
    type = string
    nullable = false
    description = "Specifies the supported Azure Region where the Load Balancer should be created. Changing this forces a new resource to be created."
}

variable "sku" {
    type = string
    default = "Standard"
    description = "The SKU of the Azure Load Balancer. Accepted values are Basic, Standard and Gateway. Defaults to Basic. Changing this forces a new resource to be created."
}

variable "sku_tier" {
    type = string
    default = "Regional"
    description = "The SKU tier of this Load Balancer. Possible values are Global and Regional. Defaults to Regional. Changing this forces a new resource to be created."
}

variable "tags" {
    type = map(any)
    description = "A mapping of tags to assign to the resource."
}

variable "subnet_id" {
    type = string
    description = "The ID of the Subnet which should be associated with the IP Configuration."
}

variable "ip_allocation" {
    type = string
    default = "Dynamic"
    description = "The allocation method for the Private IP Address used by this Load Balancer. Possible values as Dynamic and Static."
}

variable "private_ip" {
    type = string
    nullable = true
    default = ""
    description = "Private IP Address to assign to the Load Balancer. The last one and first four IPs in any range are reserved and cannot be manually assigned."
}

variable "backend_address_pools" {
    type = map(object({
        name = string
    }))
    description = "Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created."
}

variable "probe" {
    type = map(object({
        name = string
        port = string
    }))
    description = "Manages a LoadBalancer Probe Resource. Provide name and port in order to create probe."
    default = {}
}

variable "lb_rule" {
    type = map(object({
        name = string
        protocol = string
        frontend_port = string
        backend_port = string
    }))
}
