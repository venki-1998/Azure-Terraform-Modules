variable "vm_name" {
    description = "(Required) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
    description = "(Required) Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}

variable "location" {
    description = "(Required) Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
}

variable "vm_size" {
    default = "Standard_F2s_v2"
    description = "(Required) Specifies the size of the Virtual Machine. See also Azure VM Naming Conventions."
}

variable "availability_set_id" {
    #type = string
    nullable = true
    default = null
    description = "Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}

variable "username" {
    default = "perf"
    description = "(Required) Specifies the name of the local administrator account."
}

variable "password" {
    default = "Universe"
    description = "The password associated with the local administrator account."
    sensitive   = true
}

variable "zone" {
    default = null
    nullable = true
    description = "(Optional) Specifies the Availability Zones in which this Linux Virtual Machine should be located. Changing this forces a new Linux Virtual Machine to be created."
}

variable "nic_id" {
    description = "(Required) A list of Network Interface IDs which should be associated with the Virtual Machine."
}

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

variable "license_type" {
    default = null
    nullable = true
    description = "(Optional) Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are Red_Hat_Enterprise_Linux. "
}

variable "storage_account_type"    {
    default = "Standard_LRS"
    description = "Specifies the type of Managed Disk which should be created. Possible values are Standard_LRS, StandardSSD_LRS or Premium_LRS."
}

variable "caching" {
    default = "ReadWrite"
    description = "Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite."
}

variable "disk_encryption_set_id" {
    default = null
    type = string
    nullable = true
    description = "The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with secure_vm_disk_encryption_set_id."
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

variable "vm_tags" {
    type = map(any)
    description = "A map of tags to assign to the Virtual Machine."
}
