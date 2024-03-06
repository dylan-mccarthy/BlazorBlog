param location string = resourceGroup().location
param sku string = 'Free'
param tier string = 'Free'
param webAppName string

module staticWebApp 'modules/staticwebapp.bicep' = {
  name: 'static-web-app'
  params:{
    webAppName: webAppName
    location: location
    sku: sku
    tier: tier
  }
}
