### Installing and Configuring 3M's Azure IoT Source Code
Assuming you've completed the major installs required to run the source code, you're now ready to clone the 3M repo and configure the solution on your local development environment. 
 
To do so, requires the following steps:
 
1. Clone Repo
1. Configure Environment Settings
1. Update Source Code Dependencies
1. Build and Run

You might also want to watch the setup video: https://www.youtube.com/watch?v=asICCW_1uiI

### Grant KeyVault Access to Project
*dotnet user-secrets set --project C:\{your path}\src\services\common\Services\Services.csproj AppConfigurationConnectionString "Endpoint=https://crsliot-appconfig-dev.azconfig.io;Id=AMGf-l4-s0:rAtTcp3u1hOQszVB49Tg;Secret=R4VYRXHcDx8FqQxc9xNC4F16Mxt0yG4FReBFVxQF7Is="*

### TODO
Organize content into the sections below and provide coverage of how/when to use:
Icons in React JS Fluent Framework: https://developer.microsoft.com/en-us/fluentui#/styles/web/icons
 
crsliot-aks-dev.centralus.cloudapp.azure.com

**Web UI:**
 
dotnet user-secrets set --project C:\{your path}\src\services\common\Services\Services.csproj AppConfigurationConnectionString "Endpoint=https://crsliot-appconfig-dev.azconfig.io;Id=AMGf-l4-s0:rAtTcp3u1hOQszVB49Tg;Secret=R4VYRXHcDx8FqQxc9xNC4F16Mxt0yG4FReBFVxQF7Is="
 
> .env NODE_PATH src/

**App config:** 

const baseUrl = "https://crsliot-aks-dev.centralus.cloudapp.azure.com";//process.env.REACT_APP_BASE_SERVICE_URL || '';
 
*dotnet user-secrets set --project C:\DevOps\OpenSource\azure-iot-platform-dotnet\src\services\common\Services\Services.csproj AppConfigurationConnectionString "Endpoint=https://crsliot-appconfig-dev.azconfig.io;Id=AMGf-l4-s0:rAtTcp3u1hOQszVB49Tg;Secret=R4VYRXHcDx8FqQxc9xNC4F16Mxt0yG4FReBFVxQF7Is="*
 
dotnet build mmm.iot.sln
C:\DevOps\OpenSource\azure-iot-platform-dotnet\webui
 
https://github.mmm.com/mmm/azure-iot-services-dotnet
 
> npm install

> npm start

### Clone Repo
There are many ways to clone the 3M Repo.  Doing so depends on having Git installed.  
 
- Internal Repo:   https://github.mmm.com/mmm/azure-iot-services-dotnet
- Public Repo:      https://github.com/3M-Company/azure-iot-platform-dotnet/

### Configure Environment Settings
Use the relevant sections below to configure environment Settings
 
Follow recommendations here: https://github.com/3M-Company/azure-iot-platform-dotnet/blob/master/docs/DEVELOPMENT.md 
More information on configuring environment variables here. 
 
WebUI Environment Variables
Use the section below that matches your environment.
 
- Windows
- MAC
- LINUX
 
Docker and Kubernetes Settings

### WebUI Development Settings
It's necessary to set a few environment settings to get things up and running.  Use the section below that matches your environment:

### Update Source Code Dependencies

### Build and Run
If you have SASS issues run:
> npm run lint -- --fix

### Check-in Changes
TODO: https://designmodo.com/react-ci-cd/

### Services Development Settings
TODO:
3MC02YM21KJG5J:webui a9q25zz$ export REACT_APP_BASE_SERVICE_URL="https://crsliot-aks-dev.centralus.cloudapp.azure.com/"


### References


|     |         |         |
|---------|---------|---------|
|Azure Iot UX Fluent Controls	  |https://www.microsoft.com/design/fluent/  |https://github.com/Azure/iot-ux-fluent-controls  |

### Library version updates in 3M source code
#### Web UI section:
update "node-sass" version to  "4.13.1"
 
**To install, use:**
> npm install node-sass@4.13.1