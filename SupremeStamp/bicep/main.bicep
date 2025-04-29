targetScope = 'subscription'

@description('The name of the resource group to create')
param resourceGroupName string

@description('The location for the resource group')
param location string = 'eastus'

@description('The name of the Storage Account')
param storageAccountName string

// Create the Resource Group
resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location
}

// Deploy infra into the Resource Group using a module
module infraModule './infra.bicep' = {
  name: 'deploy-infra'
  scope: resourceGroup(rg.name)
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}
