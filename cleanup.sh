# delete storage account
az storage account delete --name <storage_account_name> --resource-group <resource-group_name>

# delete resource group
az group delete --name <resource-group_name>

# delete service principal
az ad sp delete --id <service_principal_id>

# confirm the service principal is deleted 
az ad sp list --display-name <service_principal_name_prefix> --output table

# delete app registration
az ad app delete --id <app_id>

# confirm the app registration is deleted for the service principal
az ad app list --display-name <app_name_prefix> -o table
