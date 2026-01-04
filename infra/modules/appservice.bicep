param location string
param namePrefix string
param tags object = {}
@secure()
param appInsightsConnectionString string

resource plan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: 'asp-${namePrefix}'
  location: location
  sku: {
    name: 'B1'
    tier: 'Basic'
    capacity: 1
  }
  tags: tags
  properties: {
    reserved: true // Linux
  }
}

resource webapp 'Microsoft.Web/sites@2023-12-01' = {
  name: 'app-${namePrefix}'
  location: location
  kind: 'app,linux'
  tags: tags
  properties: {
    serverFarmId: plan.id
    httpsOnly: true
    siteConfig: {
      linuxFxVersion: 'NODE|18-lts'
      ftpsState: 'Disabled'
      minTlsVersion: '1.2'
      appSettings: [
        {
          name: 'APPLICATIONINSIGHTS_CONNECTION_STRING'
          value: appInsightsConnectionString
        }
        {
          name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
          value: '' // kept for compatibility; connection string is preferred
        }
      ]
    }
  }
}

output webAppName string = webapp.name
output webAppUrl string = 'https://${webapp.properties.defaultHostName}'
