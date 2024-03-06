/*
  This Bicep file is used to deploy the infrastructure for a Blazor blog application.

  Parameters:
  - location: The Azure region where the resources will be deployed. Defaults to the location of the resource group.
  - sku: The SKU (Stock Keeping Unit) for the static web app. Defaults to 'Free'.
  - tier: The tier for the static web app. Defaults to 'Free'.
  - webAppName: The name of the web app.

  Modules:
  - staticWebApp: Deploys a static web app using the 'staticwebapp.bicep' module. It takes the following parameters:
    - webAppName: The name of the web app.
    - location: The Azure region where the resources will be deployed.
    - sku: The SKU (Stock Keeping Unit) for the static web app.
    - tier: The tier for the static web app.
*/

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
