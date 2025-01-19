variable "policy_name" {
    type = string
    description = "Specifies the name of the Backup Policy. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the policy. Changing this forces a new resource to be created."
}

variable "recovery_vault_name" {
    type = string
    description = "Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created."
}

variable "timezone" {
    type = string
    default = "UTC"
    description = "Specifies the timezone. the possible values are defined here. Defaults to UTC+05:30"
}

variable "frequency" {
    type = string
    description = " Sets the backup frequency. Possible values are Hourly, Daily and Weekly."
}

variable "time" {
    type = string
    default = "23:00"
    description = "The time of day to perform the backup in 24hour format."
}

variable "retention_daily" {
    type = map(object({
        count = string
    }))
    description = "The number of daily backups to keep. Must be between 7 and 9999."
}

variable "retention_weekly" {
    type = map(object({
        count = string
        weekdays = list(string)
    }))
    description = "count - The number of weekly backups to keep. Must be between 1 and 9999. weekdays - The weekday backups to retain. Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday."
}

variable "retention_monthly" {
    type = map(object({
        count = string
        weekdays = list(string)
        weeks = list(string)
    }))
    description = "count - The number of monthly backups to keep. Must be between 1 and 9999. weekdays - The weekday backups to retain . Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday. weeks - The weeks of the month to retain backups of. Must be one of First, Second, Third, Fourth, Last."
}

variable "retention_yearly" {
    type = map(object({
        count = string
        weekdays = list(string)
        weeks = list(string)
        months = list(string)
    }))
    description = "count - The number of yearly backups to keep. Must be between 1 and 9999. months - The months of the year to retain backups of. Must be one of January, February, March, April, May, June, July, August, September, October, November and December. weekdays - The weekday backups to retain . Must be one of Sunday, Monday, Tuesday, Wednesday, Thursday, Friday or Saturday. weeks - The weeks of the month to retain backups of. Must be one of First, Second, Third, Fourth, Last."
}
