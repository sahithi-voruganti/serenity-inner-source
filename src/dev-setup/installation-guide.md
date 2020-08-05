# 3M IoT Development Environment Setup Instructions

This document provides detailed documentation on setting up a development environment to contribute to 3M's IoT Azure Platform, called Bluebird.  Note: If you're using a 3M Virtual Machine, it's possible some of the products to install may exist already.

## Products to Install

Please install the following products in the order listed below.  Click the project name to open the specific steps for each product below.  Wherever relevant, OS specific steps will be provided for both Mac and PC.
I would like to also point out that we are not allowed to be admins on our 3M machines, we use elevated access. This is accomplished by right clicking and selecting the elevated access option.

**Note:**
Install Issues not specifically addressed in the specific product install guides below should be recorded here.
Since we have moved into an open source environment for Odin it is not unreasonable to use our own machines for dev. Sometimes this proves less restrictive and has better up-time.

### Product Install Guides (by install order)

- [Virtualization](products-to-install/virtualization.md) (only necessary if developing on Windows)
- [.NET Core 3.1](products-to-install/dotnet-core.md)
- [PowerShell](products-to-install/powershell.md)
- [Azure CLI](products-to-install/azure-cli.md) (plus extensions)
- [Visual Studio Code](products-to-install/visual-studio-code.md)
- [Git](products-to-install/git.md) / [Bash](products-to-install/bash.md)
- [NodeJS](products-to-install/nodejs.md) / [npm](products-to-install/npm.md)
- [Visual Studio 2019](products-to-install/vs-2019.md)
- [Azure Data Studio](products-to-install/azure-data-studio.md)
- [Storage Explorer](products-to-install/storage-explorer.md)
- [Azure IoT Explorer](products-to-install/azure-iot-explorer.md)
- [Docker](products-to-install/docker.md)
- [Terraform](products-to-install/terraform.md)
- [Kubernetes](products-to-install/kubernetes.md)
- [Helm](products-to-install/helm.md)
- [Redux](products-to-install/redux.md)
- [Postman](products-to-install/postman.md)
- [Source Code](products-to-install/source-code.md)

## Resources

|Column1  |Column2  |
|---------|---------|
|IotT Solution     |    - Source Code: <https://github.mmm.com/MMM/bluebird>   - Docs: <https://github.mmm.com/pages/MMM/bluebird/>     |
|Citrix VM     |  <http://3mcitrix.mmm.com>       |
|Base URL for Solution:      |   <https://crsliot-aks-dev.centralus.cloudapp.azure.com>      |
|Odin Repos for Azure IoT     |  - <https://github.mmm.com/pages/MMM/bluebird/>    - <https://github.mmm.com/orgs/mmm/teams/valkyrie/members>    - **Public:** 3M-Company/azure-iot-platform-dotnet       |
|Azure DevOps     |    <https://dev.azure.com/3m-bluebird/azureplatform>        |
|Microsoft Team Channels:     |  - **3M:**  Azure Platforms, Azure Platform Development    - **ACS:** 3M Digital (GGK + Analyst Channel) Project Team      |
|3M Docker Hub     |    <https://hub.docker.com/azureiot3m>      |

## Repositories

### GitHub Enterprise

- Code and Infrastructure (<https://github.mmm.com/MMM/azure-iot-services-dotnet>)
- Azure Functions (<https://github.mmm.com/MMM/azure-iot-messaging-functions>)
- App Config (<https://github.mmm.com/MMM/azure-iot-appconfig-function>)
- Device Migration (<https://github.mmm.com/MMM/azure-iot-device-migration>)
- Functional Testing (<https://github.mmm.com/MMM/azure-iot-functional-tests>)
