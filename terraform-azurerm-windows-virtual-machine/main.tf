resource "azurerm_windows_virtual_machine" "winvm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vmsize
  zone                = var.zone
  availability_set_id = var.availability_set_id
  admin_username      = var.username
  admin_password      = var.password
  source_image_id     = var.image_id
  network_interface_ids = var.nic_id
  license_type          = var.license_type
  enable_automatic_updates = true
  provision_vm_agent = true
  dynamic "source_image_reference" {
    for_each = var.source_image_reference
    content {
      publisher = source_image_reference.value["publisher"]
      offer     = source_image_reference.value["offer"]
      sku       = source_image_reference.value["offer"]
      version   = source_image_reference.value["version"]
    }
  }
  os_disk {
    name                  = "${var.vm_name}-osdisk01"
    caching              = var.caching
    storage_account_type = var.storage_acc_type
    disk_encryption_set_id = var.disk_encryption_set_id
  }
  tags = {for k, v in var.vm_tags : lower(k) => lower(v)} #var.vm_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      admin_password,
    ]
  }
}

resource "azurerm_managed_disk" "disk" {
  for_each = var.disk
  name                 = each.value["disk_name"]
  location             = var.location
  zone                 = var.zone
  resource_group_name  = var.resource_group_name
  storage_account_type = each.value["account_type"]
  create_option        = each.value["create_option"]
  disk_size_gb         = each.value["disk_size_gb"]
  disk_encryption_set_id = each.value["disk_encryption_set_id"]
  public_network_access_enabled = var.public_network_access_enabled
  network_access_policy = var.network_access_policy
  tags = merge(var.vm_tags, { parent = "${resource.azurerm_windows_virtual_machine.winvm.name}"})
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_attachment" {
  for_each  = var.disk
  managed_disk_id    = resource.azurerm_managed_disk.disk[each.key].id
  virtual_machine_id = resource.azurerm_windows_virtual_machine.winvm.id
  lun                = each.value["lun"]
  caching            = each.value["caching"]
}
