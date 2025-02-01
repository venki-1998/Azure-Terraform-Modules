variable "nsg_name" {
  type = string
  description = "(Required) Specifies the name of the network security group. Changing this forces a new resource to be created."
}

variable "nsg_tags" {
    type = map(any)
}

variable "resource_group_name" {
    type = string
    description = "(Required) The name of the resource group in which to create the network security group. Changing this forces a new resource to be created."
    validation {
        condition     = length(var.resource_group_name) > 4
        error_message = "Lenght of Resource Group Name Should be more than 4"
    }
    nullable = false
}

variable "subent_ip" {
  type = list(string)
  default = []
  nullable = true
  description = "Share IP address of VM Subnet to be attached to VM NSG rules"
}

variable "location" {
    type = string
    description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
    nullable = false

}

variable "nsg_rules" {
  description = "List of objects representing security rules, as defined below."
  type = map(object({
    name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_port_ranges          = list(any)
    destination_port_ranges     = list(any)
    source_address_prefix      = string
    destination_address_prefix = string
    source_address_prefixes      = list(any)
    destination_address_prefixes = list(any)
    description                = string
  }))
}

variable "default_nsg_rules" {
  description = "List of objects representing security rules, as defined below.name - (Required) The name of the security rule.description - (Optional) A description for this rule. Restricted to 140 characters.protocol - (Required) Network protocol this rule applies to. Possible values include Tcp, Udp, Icmp, Esp, Ah or * (which matches all).source_port_range - (Optional) Source Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if source_port_ranges is not specified.source_port_ranges - (Optional) List of source ports or port ranges. This is required if source_port_range is not specified.destination_port_range - (Optional) Destination Port or Range. Integer or range between 0 and 65535 or * to match any. This is required if destination_port_ranges is not specified.destination_port_ranges - (Optional) List of destination ports or port ranges. This is required if destination_port_range is not specified.source_address_prefixes - (Optional) List of source address prefixes. Tags may not be used. This is required if source_address_prefix is not specified.destination_address_prefixes - (Optional) List of destination address prefixes. Tags may not be used. This is required if destination_address_prefix is not specified.access - (Required) Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny.priority - (Required) Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.direction - (Required) The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound."
  type = map(object({
    name                       = string
    priority                   = string
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_port_ranges          = list(any)
    destination_port_ranges     = list(any)
    source_address_prefix      = string
    destination_address_prefix = string
    source_address_prefixes      = list(any)
    destination_address_prefixes = list(any)
    description                = string
  }))
  default = {
          DenyALL = { 
                name = "DenyALLInbound"
                priority = 501
                direction = "Inbound"
                access = "Deny"
                protocol = "*" 
                source_port_range = "*"
                source_port_ranges = []
                destination_port_range = "*"
                destination_port_ranges = []
                source_address_prefix = "*"
                destination_address_prefix = "*"
                source_address_prefixes = []
                destination_address_prefixes = []
                description = "DenyALL Inbound communication within VNET and subnet"
            }
          DenyALLOUT = { 
                name = "DenyALLOutbound"
                priority = 501
                direction = "Outbound"
                access = "Deny"
                protocol = "*" 
                source_port_range = "*"
                source_port_ranges = []
                destination_port_range = "*"
                destination_port_ranges = []
                source_address_prefix = "*"
                destination_address_prefix = "*"
                source_address_prefixes = []
                destination_address_prefixes = []
                description = "DenyALL Outbound communication within VNET and subnet"
            }
        }
  }
