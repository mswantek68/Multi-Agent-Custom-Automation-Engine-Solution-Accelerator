using './main.bicep'

param solutionPrefix = null //Type a string value to customize the prefix for your resource names
param solutionLocation = readEnvironmentVariable('AZURE_LOCATION', 'swedencentral')
param azureOpenAILocation = readEnvironmentVariable('AZURE_ENV_OPENAI_LOCATION', 'swedencentral')
param logAnalyticsWorkspaceConfiguration = {
  dataRetentionInDays: 90
  sku: 'PerGB2018' // Using PerGB2018 for production to handle larger data volumes
}
param applicationInsightsConfiguration = {
  retentionInDays: 90
}
param virtualNetworkConfiguration = {
  enabled: true
}
param aiFoundryStorageAccountConfiguration = {
  sku: 'Premium_ZRS' // Using Premium for better performance
}
param webServerFarmConfiguration = {
  skuCapacity: 4 // Increased capacity for production
  skuName: 'B1' // Using B1 for production, as it provides better performance than B2
}
param virtualMachineConfiguration = {
  adminUsername: 'adminuser'
  adminPassword: '$tart12345'
}
