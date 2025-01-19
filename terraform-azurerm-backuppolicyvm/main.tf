resource "azurerm_backup_policy_vm" "backup_policy" {
    name                = var.policy_name
    resource_group_name = var.resource_group_name
    recovery_vault_name = var.recovery_vault_name
    timezone = var.timezone
    lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      timezone,
    ]
  }

    backup {
        frequency = var.frequency
        time      = var.time
    }

    dynamic "retention_daily" {
        for_each = var.retention_daily
        content {
            count = retention_daily.value["count"]
        } 
    }
    dynamic "retention_weekly" {
        for_each = var.retention_weekly
        content {
            count    = retention_weekly.value["count"]
            weekdays = retention_weekly.value["weekdays"]
        }
    }
    dynamic "retention_monthly" {
        for_each = var.retention_monthly
        content {
            count    = retention_monthly.value["count"]
            weekdays = retention_monthly.value["weekdays"]
            weeks    = retention_monthly.value["weeks"]
        }
    }
    dynamic "retention_yearly" {
        for_each = var.retention_yearly
        content {      
            count    = retention_yearly.value["count"]
            weekdays = retention_yearly.value["weekdays"]
            weeks    = retention_yearly.value["weeks"]
            months   = retention_yearly.value["months"]
        }
    }
}
