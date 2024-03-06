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
