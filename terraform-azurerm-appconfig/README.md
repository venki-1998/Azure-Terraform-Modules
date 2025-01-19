# This Script will create App Config on Azure Portal.

## Note:

Version 3.27.0 and later of the Azure Provider include a Feature Toggle which will purge an App Configuration resource on destroy, rather than the default soft-delete. The Provider will automatically recover a soft-deleted App Configuration during creation if one is found. See the Features block documentation for more information on Feature Toggles within Terraform.

## Note:

Reading and purging soft-deleted App Configurations requires the Microsoft.AppConfiguration/locations/deletedConfigurationStores/read and Microsoft.AppConfiguration/locations/deletedConfigurationStores/purge/action permission on Subscription scope. Recovering a soft-deleted App Configuration requires the Microsoft.AppConfiguration/configurationStores/write permission on Subscription or Resource Group scope. More information can be found in the Azure Documentation for App Configuration. See the following links for more information on assigning Azure custom roles or using the azurerm_role_assignment resource to assign a custom role.
