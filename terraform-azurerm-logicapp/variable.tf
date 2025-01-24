variable "logic_app_name" {
  type = string
  description = "Specifies the name of the Logic App Changing this forces a new resource to be created."
}

variable "location" {
  type = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
}

variable "rg_name" {
  type = string
  description = "The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created."
}

variable "app_service_plan_id" {
  type = string
  description = "The ID of the App Service Plan within which to create this Logic App"
}

variable "storage_account_name" {
  type = string
  description = "The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created."
}

variable "storage_account_access_key" {
  type = string
  description = "The access key which will be used to access the backend storage account for the Logic App"
}

variable "virtual_network_subnet_id" {
  type = string
  description = "The subnet id which will be used by this resource for regional virtual network integration."
}

variable "enabled" {
  type = bool
  default = true
  description = "Is the Logic App enabled? Defaults to true."
}

variable "https_only" {
  type = bool
  default = true
  description = " Can the Logic App only be accessed via HTTPS? Defaults to true."
}

variable "identity_type" {
  type = string
  default = "SystemAssigned"
  description = "Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are SystemAssigned, UserAssigned and SystemAssigned, UserAssigned (to enable both)."
}

variable "identity_ids" {
  type = list
  default = []
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard."
}

variable "logic_app_tags" {
  type = map(any)
  description = "map of tags requried.
}
