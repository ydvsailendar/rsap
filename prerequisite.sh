# login using cli
az login

# check account details
az account list --output table

# create service principal for github actions
az ad sp create-for-rbac --name <service_principal_name>

# create resource group to hold resources
az group create --name <resource_group_name> --location <location>

# NOTE: app_id comes from response of create service principal step as appId

# add contributor role permission to the service prinicipal on resource_group scope
az role assignment create --assignee <app_id> --role Owner --scope /subscriptions/<subscription_id>

# validate role is assignment as expected
az role assignment list --assignee <app_id> --all --output table

# create storage account for terraform state storage
az storage account create --name <storage_account_name> --resource-group <resource_group_name> --location <location> --sku Standard_LRS --encryption-services blob --allow-blob-public-access false

# create container inside the storage account for state file storage
az storage container create --name <container_name> --account-name <storage_account_name> --public-access off
