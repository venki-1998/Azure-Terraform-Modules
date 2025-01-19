variable "app_service_name" {
  type = string
  description = "Specifies the name of the App Service. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which to create the App Service. Changing this forces a new resource to be created."
}

variable "location" {
  type = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "public_network_access_enabled" {
  default = false
  type = bool
  description = "Should public network access be enabled for the Web App. Defaults to false."
}

variable "https_only" {
  default = false
  type = bool
  description = "Should the Windows Web App require HTTPS connections."
}

variable "virtual_network_subnet_id" {
  type = string
  description = "The subnet id which will be used by this Web App for regional virtual network integration.Assigning the virtual_network_subnet_id property requires RBAC permissions on the subnet"
}

variable "app_settings" {
  type = map(any)
  description = "A key-value pair of App Settings."
}

variable "service_plan_id" {
  type = string
  description = "The ID of the App Service Plan within which to create this App Service."
}

variable "current_stack" {
  type = string
  description = "The Application Stack for the Windows Web App. Possible values include dotnet, dotnetcore, node, python, php, and java."
}

variable "dotnet_version" {
  type = string
  nullable = true
  description = "The version of .NET to use when current_stack is set to dotnet. Possible values include v2.0,v3.0, v4.0, v5.0, v6.0 and v7.0."
}

variable "dotnet_core_version" {
  type = string
  nullable = true
  description = "The version of .NET to use when current_stack is set to dotnetcore. Possible values include v4.0."
}

variable "node_version" {
  type = string
  nullable = true
  description = " The version of node to use when current_stack is set to node. Possible values are ~12, ~14, ~16, and ~18."
}

variable "python_app" {
  type = bool
  default = false
  description = "Specifies whether this is a Python app. Defaults to false."
}

variable "php_version" {
  type = string
  nullable = true
  description = "The version of PHP to use when current_stack is set to php. Possible values are 7.1, 7.4 and Off."
}

variable "java_embedded_server_enabled" {
  type = bool
  default = null
  nullable = true
  description = "Should the Java Embedded Server (Java SE) be used to run the app."
}

variable "java_version" {
  type = string
  nullable = true
  description = "The version of Java to use when current_stack is set to java.For currently supported versions, please see the official documentation. Some example values include: 1.8, 1.8.0_322, 11, 11.0.14, 17 and 17.0.2"
}

variable "tomcat_version" {
  type = string
  nullable = true
  description = "The version of Tomcat the Java App should use. Conflicts with java_embedded_server_enabled. See the official documentation for current supported versions. Some example valuess include: 10.0, 10.0.20."
}

variable "custom_hostname" {
  default = {}
  type = map(object({
    domain = string
  }))
  nullable = true
  description = "Specifies the Custom Hostname to use for the App Service, example www.example.com. Changing this forces a new resource to be created."
}

variable "identity_type" {
  type = string
  description = "Specifies the identity type of the App Service. Possible values are SystemAssigned (where Azure will generate a Service Principal for you), UserAssigned where you can specify the Service Principal IDs in the identity_ids field, and SystemAssigned, UserAssigned which assigns both a system managed identity as well as the specified user assigned identities."
}

variable "vnet_route_all_enabled" {
  default = true
  type = bool
  description = "Should all outbound traffic to have Virtual Network Security Groups and User Defined Routes applied? Defaults to false."
}

variable "identity_ids" {
  type = list
  default = []
  description = "Specifies a list of user managed identity ids to be assigned. Required if type is UserAssigned."
}

variable "connection_string" {
  default = {}
  description = "One or more connection_string define. provide parameters: name, type, value."
}

variable "file_system_level" {
  type = string
  default = "Information"
  description = "Log level. Possible values include: Verbose, Information, Warning, and Error."
}

variable "detailed_error_messages" {
  type = bool
  default = false
  description = "Should detailed error messages be enabled."
}

variable "failed_request_tracing" {
  type = bool
  default = false
  description = "Should tracing be enabled for failed requests."
}

variable "retention_in_days" {
  type = string
  default = "30"
  description = "The time in days after which to remove blobs. A value of 0 means no retention."
}

variable "retention_in_mb" {
  type = string 
  default = "10"
  description = "The maximum size in megabytes that log files can use."
}

variable "app_service_tags" {
  type = map(any)
  description = "map of tags to be attached to resource."
}
