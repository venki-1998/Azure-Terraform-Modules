
# Azure Network Interface Backend Address Pool Association


This terraform configuration creates an Azure Network Interface Backend Address Pool Association on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azurerm-network-interface-backend-address-pool-association" {
  source  = ""
  version = ""
  # insert required variables here

}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|

| backend_address_pool_id | string

| ip_config_name | string

| nic_id | string


### Optional Inputs:-


These variables have default values and don't have to be set to use this module. You may set these variables to override their default values.


| Name | Type |

|------|------|


### Outputs:-


| Name |

|------|

Bepoolassociation_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_backend_address_pool_association).
