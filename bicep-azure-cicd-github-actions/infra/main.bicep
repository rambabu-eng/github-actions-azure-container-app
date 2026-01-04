param location string = 'australiaeast'
param environment string = 'dev'
param projectName string = 'bicep-cicd'

var rgName = 'rg-${projectName}-${environment}'

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: rgName
  location: location
}
