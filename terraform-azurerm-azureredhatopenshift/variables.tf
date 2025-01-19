variable "subscription_id" {
  type = string
  description = "Subscription id to create managed RG for cluster"
}

variable "aro_cluster" {
  type = map(any)
  description = "Map of Parameters passed by user from Root Module like name, rg_name, version, vm_size, etc."
}

#variable "aro_name" {
#  type = string
#}

variable "location" {
  type = string
  description = "Location of Cluster"
}

#variable "rg_id" {
#  type = string
#}

variable "openshift_template_version" {
  type = string
  default = "Microsoft.RedHatOpenShift/openShiftClusters@2023-04-01"
  description = "This is Template Version, Refer: https://learn.microsoft.com/en-us/azure/templates/microsoft.redhatopenshift/2023-04-01/openshiftclusters?pivots=deployment-language-terraform' for latest version update"
}

variable "aro_tags" {
  type = map(any)
  description = "Application tags passed from root module."
}

#variable "domain" {
#  type = string
#}

variable "fips_validated_modules" {
  type = string
  default = "Disabled"
  description = "FIPS-validated cryptographic module is one that has been tested and approved by a NIST"
}

#variable "aro_version" {
#  type = string
#}

variable "pod_cidr" {
  type = string
  default = "10.148.0.0/14"
  description = "POD CIDR fixed by Organisation for ARO Clusters"
}

variable "service_cidr" {
  type = string
  default = "10.152.0.0/16"
  description = "Service CIDR fixed by Organisation for ARO Clusters"
}

#variable "master_node_vm_size" {
#  type = string
#}

#variable "master_subnet_id" {
#  type = string
#}

variable "encryption_at_host" {
  type = string
  default = "Disabled"
  description = "Encryption At Host. Default = 'Disabled' as it requires microsoft.encryption to be enabled at subscription level from portal."
}

#variable "diskEncryptionSetId" {
#  type = string
#}

#variable "worker_profile_name" {
#  type = string
#}

#variable "worker_node_vm_size" {
#  type = string
#}

#variable "worker_node_vm_disk_size" {
#  type = number
#}

#variable "worker_subnet_id" {
#  type = string
#}

#variable "worker_node_count" {
#  type = number
#}

variable "clientId" {
type = string
}

variable "clientSecret" {
type = string
}

variable "api_server_visibility" {
  type = string
  default = "Private"
  description = "API server Visibility set to Private."
}

variable "ingress_profile_name" {
  type = string
  default = "default"
  description = "Name of Ingress Profile."
}

variable "ingress_visibility" {
  type = string
  default = "Private" 
  description = "Ingress Visibility Set to Private Only."
}

variable "outbound_type" {
  type = string
  default = "UserDefinedRouting"
  description = "Outbound type set to UserDefinedRouting because to avoid the creation of public IP in the backend."
}
  
