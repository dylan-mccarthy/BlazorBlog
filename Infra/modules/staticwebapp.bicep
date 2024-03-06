/*
  Creates a static web app resource in Azure.

  @param webAppName - The name of the static web app.
  @param location - The location where the static web app will be deployed. Defaults to the location of the resource group.
  @param sku - The SKU (Stock Keeping Unit) of the static web app. Defaults to 'Free'.
  @param tier - The tier of the static web app. Defaults to 'Free'.

  @returns A static web app resource with the specified configuration.
*/

param webAppName string
param location string = resourceGroup().location
param sku string = 'Free'
param tier string = 'Free'

resource staticWebApp 'Microsoft.Web/staticSites@2023-01-01' = {
  name: webAppName
  location: location
  properties: {
    allowConfigFileUpdates: true
  }
  sku: {
    name: sku
    tier: tier
  }

  tags: resourceGroup().tags
}
