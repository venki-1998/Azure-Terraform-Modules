locals {
  next_hop_ip_address = var.location == "Central India" ? "10.76.x.x" : "172.56.x.x"
  default_routes = endswith(var.rt_name,"VM-RT") ? {
              "RT01" = {
                name                       = "Route01"
                address_prefix             = "10.51.x.x/32"
                next_hop_type              = "VirtualAppliance"
                next_hop_in_ip_address     = local.next_hop_ip_address
             }
              "RT02" = {
                name                       = "Route02"
                address_prefix             = "10.16.x.x/32"
                next_hop_type              = "VirtualAppliance"
                next_hop_in_ip_address     = local.next_hop_ip_address
             }
	           "RT101" = {
                name                       = "Route03"
                address_prefix             = "192.168.x.x/32"
                next_hop_type              = "VirtualAppliance"
                next_hop_in_ip_address     = local.next_hop_ip_address
             }
             "RT102" = {
                name                       = "Route04"
                address_prefix             = "192.168.x.x32"
                next_hop_type              = "VirtualAppliance"
                next_hop_in_ip_address     = local.next_hop_ip_address
             }
  } : {}
}
