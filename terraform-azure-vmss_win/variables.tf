variable "VMS_rg" {}

variable "VMS_snet" {}

variable "VMS_vnet" {}

###lb##

variable "VMSS_lb_name" {}

variable "lb_tags"{
    type = map(string)
}

variable "location" {}

variable "lb_fntconfig_name"{}

variable "private_ip_add"{}


######### lb add pool###

variable "lb_add_pool_name"{}


## VMSS#####

variable "VMSS_name"{}

variable "VMSS_nwp_name" {}

variable "VMSS_IPconfig_name" {}

variable "VMSS_tags" {
    type=map(string)
}

variable "upgrade_policy_mode" {}

variable "sku_name"{} #"Standard_DS1_v2"

variable "sku_tier" {} #"Standard"

variable "capacity"{} #2


########@@@@@@ storage_profile_image_reference @@@@@@@

variable "publisher" {} #"Canonical"

variable "offer" {} #"UbuntuServer"

variable "sto_pro_sku" {} #"16.04-LTS"


#####@@@@@@@@@ storage_profile_os_disk

variable "os_disk_name"{}

variable "caching" {} #"ReadWrite"

variable "create_option" {} #"FromImage"

variable "managed_disk_type" {} #"Standard_LRS"


####### @@@@@@ storage_profile_data_disk

variable "lun" {} #0

variable "caching_dd" {} #"ReadWrite"

variable "create_option_dd" {} #"Empty"

variable "disk_size_gb" {} #10


###### @@@@@ os_profile

variable "VMSS_osp_name" {} #"vmlab"

variable "osp_admin_user" {
   type = string
   sensitive = true
}

variable "osp_admin_password"{
   type=string
   sensitive = true
}
