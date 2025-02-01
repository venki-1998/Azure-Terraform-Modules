resource "azurerm_virtual_machine" "windows_vm1" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = var.nic_id
  vm_size               = var.vmsize
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true
  license_type = var.licence_type
  storage_image_reference {
    id = var.image_id
  }
  os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent = true
  }
  storage_os_disk {
    name                  = "${var.vm_name}-osdisk01"
    caching               = var.caching
    create_option     = var.create_option
    managed_disk_type  = var.storage_acc_type
   }
  os_profile {
    computer_name  = var.vm_name
    admin_username = var.username
    admin_password = var.password
  }
  tags = var.vm_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,os_profile
    ]
  }
}

resource "azurerm_managed_disk" "disk" {
  for_each = var.disk
  name                 = each.value["disk_name"]
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = each.value["account_type"]
  create_option        = each.value["create_option"]
  disk_size_gb         = each.value["disk_size_gb"]
  disk_encryption_set_id = each.value["disk_encryption_set_id"]
  public_network_access_enabled = var.public_network_access_enabled
  network_access_policy = var.network_access_policy
  tags = merge(var.vm_tags, { parent = "${resource.azurerm_virtual_machine.windows_vm1.name}"})
  lifecycle {
      ignore_changes = [
        tags
      ]
    }
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_attachment" {
  for_each  = var.disk
  managed_disk_id    = resource.azurerm_managed_disk.disk[each.key].id
  virtual_machine_id = resource.azurerm_virtual_machine.windows_vm1.id
  lun                = each.value["lun"]
  caching            = each.value["caching"]
}
