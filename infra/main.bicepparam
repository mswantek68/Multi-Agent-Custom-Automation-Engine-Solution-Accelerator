using './main.bicep'

param solutionPrefix = null //Type a string value to customize the prefix for your resource names
param solutionLocation = readEnvironmentVariable('AZURE_LOCATION', 'swedencentral')
param azureOpenAILocation = readEnvironmentVariable('AZURE_ENV_OPENAI_LOCATION', 'swedencentral')
param virtualNetworkConfiguration = {
  enabled: false
}
