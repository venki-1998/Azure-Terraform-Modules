variable "image_id" {
    type = string
    default = null
    description = "Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created."
}

variable "source_image_reference" {
    type = map(any)
    default = {}
    description = "A source_image_reference block as defined below. Changing this forces a new resource to be created. Map contains publisher, offer, sku, version"
}

variable "vm_name" {
    type = string
    description = "(Required) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
}

variable "nic_id" {
    type = list
    description = "(Required) A list of Network Interface IDs which should be associated with the Virtual Machine."
}

variable "availability_set_id" {
    #type = string
    nullable = true
    default = null
    description = "Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}

variable "vmsize" {
    type = string
    description = "(Required) Specifies the size of the Virtual Machine. Ex. Standard_F2s_v2"
}

variable "resource_group_name" {
    type = string
    description = " (Required) Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}

variable "location" {
    type = string
    description = "(Required) Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
}

variable "zone" {
    default = null
    nullable = true
    description = "(Optional) Specifies the Availability Zones in which this Linux Virtual Machine should be located. Changing this forces a new Linux Virtual Machine to be created."
}

variable "license_type" {
    type = string
    default = "Windows_Server"
    description = "(Optional) Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are Windows_Client and Windows_Server. "
}

variable "username" {
    type = string
    default = "netadmin"
    description = "(Required) Specifies the name of the local administrator account. Default = netadmin"
}

variable "password" {
    type = string
    default = "admin@1234567"
    sensitive   = true
    description = "The password associated with the local administrator account."
}

variable "caching" {
    default = "ReadWrite"
    description = "(Optional) Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite."
}

variable "storage_acc_type"    {
    default = "Standard_LRS"
    description = " Specifies the type of managed disk to create. Possible values are either Standard_LRS, StandardSSD_LRS, Premium_LRS or UltraSSD_LRS."
}

variable "disk_encryption_set_id" {
    default = null
    nullable = true
    type = string
    description = "The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with secure_vm_disk_encryption_set_id."
}

variable "vm_tags" {
    type = map(any)
    description = "A map of tags to assign to the Virtual Machine."
}

variable "disk" {
    description = "managed disks to be attached. mention variables: disk_name, account_type, create_option, disk_size_gb,disk_encryption_set_id in order to create Attached disks. "
}

variable "public_network_access_enabled" {
  default = false
}

variable "network_access_policy" {
  default = "DenyAll"
}
