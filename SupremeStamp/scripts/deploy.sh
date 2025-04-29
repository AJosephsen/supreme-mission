
#!/bin/bash
# Login to Azure
# az login --use-device-code

# Deploy the Bicep template
az deployment sub create --location eastus --template-file ./bicep/main.bicep --parameters storageAccountName=examplestorageaccount
