# Overview

The Azure command-line interface (Azure CLI) is a set of commands used to create and manage Azure resources. The Azure CLI is available across Azure services and is designed to get you working quickly with Azure, with an emphasis on automation.

Click [here](https://docs.microsoft.com/en-us/cli/azure/what-is-azure-cli?view=azure-cli-latest) to get more details
Be sure to add [additional extensions, see below](#additional-extensions).

Note: Requires Elevated Permissions on 3M's Virtual Machine

## Install the Azure CLI

The Azure CLI is available to install in Windows, macOS and Linux environments. It can also be run in a Docker container and Azure Cloud Shell.

The current version of the Azure CLI is **2.3.1.** For information about the latest release, see the [release notes](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli?view=azure-cli-latest). To find your installed version and see if you need to update, run `az --version`.

   - [Install on Windows](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest)
   - [Install on macOS](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos?view=azure-cli-latest)
   - Install on Linux or [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about)
       - [Install with apt on Debian or Ubuntu](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt?view=azure-cli-latest)
       - [Install with yum on RHEL, Fedora, or CentOS](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-yum?view=azure-cli-latest)
       - [Install with zypper on openSUSE or SLE](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-zypper?view=azure-cli-latest)
       - [Install from script](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux?view=azure-cli-latest)
   - [Run in Docker container](https://docs.microsoft.com/en-us/cli/azure/run-azure-cli-docker?view=azure-cli-latest)
   - [Run in Azure Cloud Shell](https://docs.microsoft.com/en-us/azure/cloud-shell/quickstart)

## Use extensions with Azure CLI

The Azure CLI offers the capability to load extensions. Extensions are Python wheels that aren't shipped as part of the CLI but run as CLI commands. With extensions, you gain access to experimental and pre-release commands along with the ability to write your own CLI interfaces.

Click [here](https://docs.microsoft.com/en-us/cli/azure/azure-cli-extensions-overview?view=azure-cli-latest#install-extensions) to get details on how to use extensions

## Additional Extensions

Add the extensions listed below.  To do so, use the following command:
> az extension add --name {extension_name}

To see the list of available extensions and their details such as if they're enabed, run the following:
> az extension list-available

Note: if any of your extensions need to be updated, you can swap the **add** commands with **update**.

### Dev Spaces

- **Description:** Dev Spaces provides a rapid, iterative Kubernetes development experience    for teams.
- **Command:** `az extension add --name dev-spaces`
- [Documentation](https://docs.microsoft.com/en-us/cli/azure/ext/dev-spaces/aks?view=azure-cli-latest)
    - **Note:** there is a preview version as well.  dev-spaces-preview

### IoT

- **Description:** Comprehensive data-plane functionality to manage Internet of Things (IoT) assets.
- **Command:** `az extension add --name azure-iot`
- [Documentation](https://docs.microsoft.com/en-us/cli/azure/ext/azure-iot/iot?view=azure-cli-latest)

### DevOps

- **Description:** Manage Azure DevOps organization level operations including pipelines, boards, repos, artifacts, etc.
- **Command:** `az extension add --name azure-devops`
- [Documentation](https://docs.microsoft.com/en-us/cli/azure/ext/azure-devops/?view=azure-cli-latest)

### Azure Kubernetes Service (AKS)

- **Description:** Manage Azure Kubernetes Services.
- **Command:** `az extension add --name aks-preview`
- [Documentation](https://docs.microsoft.com/en-us/cli/azure/ext/aks-preview/aks?view=azure-cli-latest)
