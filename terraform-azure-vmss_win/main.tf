data "azurerm_resource_group" "VMSS_rg" {
   name=var.VMS_rg
}

data "azurerm_subnet" "VMSS_snet" {
  name =var.VMS_snet
  virtual_network_name=var.VMS_vnet
  resource_group_name=var.VMS_rg
}

############ LB###############

resource "azurerm_lb" "vmss" {
name                = var.VMSS_lb_name #"vmss-lb"
location            = var.location
resource_group_name = data.azurerm_resource_group.VMSS_rg.name

 frontend_ip_configuration {
   name                 = var.lb_fntconfig_name #"privateIPAddress"
   #public_ip_address_id = azurerm_public_ip.vmss.id
   private_ip_address = var.private_ip_add
   subnet_id = data.azurerm_subnet.VMSS_snet.id
}
 tags = {for k, v in var.lb_tags : lower(k) => lower(v)}#var.lb_tags
}

resource "azurerm_lb_backend_address_pool" "bpepool" {
loadbalancer_id     = azurerm_lb.vmss.id
name                = var.lb_add_pool_name #"BackEndAddressPool"
}

# /*resource "azurerm_lb_probe" "vmss" {
#  resource_group_name = azurerm_resource_group.vmss.name
#  loadbalancer_id     = azurerm_lb.vmss.id
#  name                = "ssh-running-probe"
#  port                = var.application_port
# }*/

# /*resource "azurerm_lb_rule" "lbnatrule" {
#    resource_group_name            = azurerm_resource_group.vmss.name
#    loadbalancer_id                = azurerm_lb.vmss.id
#    name                           = "http"
#    protocol                       = "Tcp"
#    frontend_port                  = var.application_port
#    backend_port                   = var.application_port
#    backend_address_pool_id        = azurerm_lb_backend_address_pool.bpepool.id
#    frontend_ip_configuration_name = "PublicIPAddress"
#    probe_id                       = azurerm_lb_probe.vmss.id
# }*/


resource "azurerm_virtual_machine_scale_set" "vmss" {
name                = var.VMSS_name #"vmscaleset"
location            = var.location
resource_group_name = data.azurerm_resource_group.VMSS_rg.name
upgrade_policy_mode = var.upgrade_policy_mode #"Manual"

 sku {
   name     = var.sku_name
   tier     = var.sku_tier
   capacity = var.capacity
}

 storage_profile_image_reference {
   publisher = var.publisher
   offer     = var.offer
   sku       = var.sto_pro_sku
   version   = "latest"
}

 storage_profile_os_disk {
   name              = var.os_disk_name
   caching           = var.caching
   create_option     = var.create_option
   managed_disk_type = var.managed_disk_type
}

 storage_profile_data_disk {
   lun          = var.lun
   caching        = var.caching_dd
   create_option  = var.create_option_dd
   disk_size_gb   = var.disk_size_gb
}

 os_profile {
   computer_name_prefix = var.VMSS_osp_name
   admin_username       = var.osp_admin_user
   admin_password       = var.osp_admin_password
   #custom_data          = file("web.conf")
}

#####This is commiented as part of windows vmss test##############
#  os_profile_linux_config {
#    disable_password_authentication = var.disable_password_authentication
#  }

#######################################

network_profile {
   name    = var.VMSS_nwp_name
   primary = true

   ip_configuration {
     name                                   = var.VMSS_IPconfig_name
     subnet_id                              = data.azurerm_subnet.VMSS_snet.id
     load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.bpepool.id]
     primary = true
   }
}
 tags = {for k, v in var.VMSS_tags : lower(k) => lower(v)}#var.VMSS_tags
}
