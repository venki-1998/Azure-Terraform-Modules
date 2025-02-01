locals {
  default_rules = endswith(var.nsg_name,"VM-NSG") ? { 
            rule01 = { 
                name = "Allow_Test_Rule"
                priority = 100
                direction = "Inbound"
                access = "Allow"
                protocol = "Tcp" 
                source_port_range = "*"
                source_port_ranges = []
                destination_port_range = ""
                destination_port_ranges = ["22","443",""]
                source_address_prefix = ""
                destination_address_prefix = ""
                source_address_prefixes = ["10.16.x.x","10.78.x.x"]
                destination_address_prefixes = var.subent_ip
                description = "This rule is created for SSH , HTTPS"
            }
           rule02 = { 
                name = "Allow_Test_Rule02"
                priority = 101
                direction = "Inbound"
                access = "Allow"
                protocol = "Tcp" 
                source_port_range = "*"
                source_port_ranges = []
                destination_port_range = ""
                destination_port_ranges = ["22"]
                source_address_prefix = ""
                destination_address_prefix = ""
                source_address_prefixes = ["172.16.x.x","10.227.x.x"]
                destination_address_prefixes = var.subent_ip
                description = "This rule is created for SSH"
            }
  } : {}
}
