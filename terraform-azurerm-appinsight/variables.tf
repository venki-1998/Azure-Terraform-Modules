variable "insight_name" {
    type = string
    description = "Specifies the name of the Application Insights component. Changing this forces a new resource to be created."
}

variable "location" {
    type = string
    description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created."
}

variable "application_type" {
    type = string
    description = "Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, Node.JS for Node.js, other for General, phone for Windows Phone, store for Windows Store and web for ASP.NET. Please note these values are case sensitive; unmatched values are treated as ASP.NET by Azure. Changing this forces a new resource to be created."
}

variable "retention_in_days" {
    type = number
    default = 90
    description = "Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730. Defaults to 90."
}

variable "sampling_percentage" {
    type = number
    default = 100
    description = "Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Defaults to 100."
}

variable "workspace_id" {
    type = string
    description = "Specifies the id of a log analytics workspace resource. This can not be removed after set. More details can be found at Migrate to workspace-based Application Insights resources"
}

variable "local_authentication_disabled" {
    type = bool
    default = true
    description = "Disable Non-Azure AD based Auth. Defaults to true."
}

variable "internet_ingestion_enabled" {
    type = bool
    default = false
    description = "Should the Application Insights component support ingestion over the Public Internet? Defaults to false."
}

variable "internet_query_enabled" {
    type = bool
    default = false
    description = "Should the Application Insights component support querying over the Public Internet? Defaults to false."
}

variable "force_customer_storage_for_profiler" {
    type = bool
    default = false
    description = "Should the Application Insights component force users to create their own storage account for profiling? Defaults to false."
}

variable "tags" {
    type = map(any)
    description = " A mapping of tags to assign to the resource."
}
