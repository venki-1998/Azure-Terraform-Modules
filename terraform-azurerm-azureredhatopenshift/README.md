# Azure Redhat Openshift

## We can use this module to create Azure Redhat Openshift Container Solution which is join venture of both Azure and RedHat. Please refer Input tab for all required Inputs required.

Refer below template for Deployment:<br />

module "terraform-azurerm-azureredhatopenshift" {<br />
  source  = ""<br /> 
  version = ""<br /> 
  // insert required variables here<br /> 
  // refer variable tab for all required and optional variables<br /> 

}



## Note :

Whenever the cluster is creating ba public ip in the backend we need to keep eye on the "openshift_template_version" is need to be set with latest releases and the variable "outbound_type" is set to be "UserDefinedRouting".

For more information please refer the below link

"https://learn.microsoft.com/en-us/azure/templates/microsoft.redhatopenshift/2023-04-01/openshiftclusters?pivots=deployment-language-terraform"
