variable "metric_alert_name" {
  type = string
  description = "(Required) The name of the Metric Alert. Changing this forces a new resource to be created."
}
  
variable "rg_metric_alert" {
type = string
description = "(Required) The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created.
}
  
variable "scopes" {
  type = list
  description = "(Required) A set of strings of resource IDs at which the metric criteria should be applied."
}

variable "target_resource_type" {
  type = string
  description = "(Optional) The resource type (e.g. Microsoft.Compute/virtualMachines) of the target resource."
}

variable "target_resource_location" {
  type = string
  description = "(Optional) The location of the target resource."
}   

variable "metric_namespace" {
  type = string
  description = "(Required) One of the metric namespaces to be monitored."
}
     
variable "metric_name" {
  type = string
  description = "(Required) One of the metric names to be monitored."
}
     
variable "aggregation" {
  type = string
  description = "(Required) The statistic that runs over the metric values. Possible values are Average, Count, Minimum, Maximum and Total."
}
     
variable "operator" {
  type = string
  description = "(Required) The criteria operator. Possible values are Equals, GreaterThan, GreaterThanOrEqual, LessThan and LessThanOrEqual."
}
        
variable "threshold" {
  type = number
  description = "(Required) The criteria threshold value that activates the alert."
}

variable "action_group_id" {
  type = string
  description = "(Required) The ID of the Action Group can be sourced from the azurerm_monitor_action_group resource"
}
  
variable "metric_alert_tags" {
  type = map(any)
  description = " (Optional) A mapping of tags to assign to the resource."
}
  
  
     
   
   
    
    
  
    
    
  
  
  
  
  
  
