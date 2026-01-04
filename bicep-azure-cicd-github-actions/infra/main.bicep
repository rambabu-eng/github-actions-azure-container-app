targetScope = 'subscription'

param location string = 'australiaeast'
param environment string = 'dev'
param projectName string = 'bicep-cicd'
param tags object = {
  owner: 'rambabu'
  purpose: 'learning'
  environment: environment
  project: projectName
}

var namePrefix = '${projectName}-${environment}'
var rgName = 'rg-${namePrefix}'

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: rgName
  location: location
  tags: tags
}

module monitoring './modules/monitoring.bicep' = {
  name: 'monitoring'
  scope: rg
  params: {
    location: location
    namePrefix: namePrefix
    tags: tags
  }
}

module appservice './modules/appservice.bicep' = {
  name: 'appservice'
  scope: rg
  params: {
    location: location
    namePrefix: namePrefix
    tags: tags
    appInsightsConnectionString: monitoring.outputs.appInsightsConnectionString
  }
}

output resourceGroupName string = rg.name
output webAppName string = appservice.outputs.webAppName
output webAppUrl string = appservice.outputs.webAppUrl
