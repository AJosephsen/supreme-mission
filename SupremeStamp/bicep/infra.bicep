targetScope = 'resourceGroup'

@description('The location for resources')
param location string

@description('The name of the Storage Account')
param storageAccountName string

// Create the Storage Account
resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}
