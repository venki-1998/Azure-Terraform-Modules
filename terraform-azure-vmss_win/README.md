
# Azure Windows Virtual Machine Scale Set


This terraform configuration creates an Azure Windows Virtual Machine Scale Set on Azure

### Refer below template for deployment:-


<pre>

module "terraform-azure-vmss_linux" {
  source  = ""
  version = ""
  # insert required variables here
}

</pre>


### Required Inputs:-


These variables must be set in the module block when using this module.


| Name | Type |

|------|------|
| caching               | string
| caching_dd                  | string
| capacity               | string
| create_option               | string
| create_option_dd           | string
| disk_size_gb               | string
| lb_add_pool_name           | string
| lb_fntconfig_name             | string
| lb_tags               | map(string)
| location                | string
| lun                   | string
| managed_disk_type           | string
| offer               | string
| os_disk_name               | string
| osp_admin_password           | string
| osp_admin_user           | string
| private_ip_add              | string
| publisher               | string
| sku_name               | string
| sku_tier               | string
| sto_pro_sku               | string
| upgrade_policy_mode           | string
| VMS_rg               | string
| VMS_snet               | string
| VMS_vnet               | string
| VMSS_IPconfig_name           | string
| VMSS_lb_name               | string
| VMSS_name               | string
| VMSS_nwp_name           | string
| VMSS_osp_name           | string
| VMSS_tags                   | map(string)


### Outputs:-


| Name |

|------|

vmss_lin_id


For detailed usage instructions and examples, refer to the project's [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine_scale_set).
