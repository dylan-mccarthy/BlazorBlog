param location string = resourceGroup().location
param sku string = 'Free'
param webAppName string
param staticWebAppResource string

module staticWebApp 'modules/staticwebapp.bicep' = {
  name: staticWebAppResource
  params:{
    name: webAppName
    location: location
    sku: sku
  }
}
