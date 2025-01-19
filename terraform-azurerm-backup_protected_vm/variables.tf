variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the policy. Changing this forces a new resource to be created."
}

variable "recovery_vault_name" {
    type = string
    description = "Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created."
}

variable "source_vm_id" {
    type = string
    description = "Specifies the ID of the VM to backup. Changing this forces a new resource to be created"
}

variable "backup_policy_id" {
    type = string
    description = " Specifies the id of the backup policy to use. Required in creation or when protection_stopped is not specified."
}
