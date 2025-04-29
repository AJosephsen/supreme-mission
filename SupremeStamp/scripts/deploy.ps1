
# Login to Azure
# az login --tenant 5687fe08-e0e5-4d6a-9876-d2faf0a6c8aa --use-device-code


# Deploy the Bicep template
az deployment sub create --location eastus --template-file ./bicep/main.bicep --parameters resourceGroupName="SupremeStampRG" storageAccountName="supremestorageaccount001"