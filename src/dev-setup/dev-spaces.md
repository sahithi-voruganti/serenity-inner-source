### Guide
A PowerShell script for configuring DevSpaces is available [here](https://acsicorp.sharepoint.com/sites/3MDigitalGGKAnalysts/Shared%20Documents/General/Tools/DevSpaces/DevSpaces.ps1).  Works on Windows and macOS.  Not sure about Linux.  But we also have a bash version (under Files\Tools\DevSpaces).  Additional documentation is [here](https://github.com/3M-Company/azure-iot-platform-dotnet/blob/master/docs/DEVELOPMENT.md#azure-devspaces).

Here are instructions on how to use: 

To use this file, download DevSpaces.ps1 to your machine<br/>
Then edit DevSpaces.ps1 line 10 and change the $script:MmmSourceDirectory variable to point to the containing folder of the Serenity repository<br/>
Then edit your PowerShell profile and add a line to "dot-source" DevSpaces.ps1 like so:
> . 'C:\Users\aa30hzz\DevSpaces.ps1'

Then, restart your PowerShell Core terminal<br/>
Then, create a new DevSpace like so (creates the default/kyle DevSpace):
> New-DevSpace -Name kyle -Parent default

Then, deploy Serenity to the DevSpace like so:
> Start-SerenityDevSpace -Name kyle

> Use Stop-SerenityDevSpace and Remove-DevSpace to stop the DevSpace and remove the DevSpace.

### Scripts

|Name  |Windows  |macOS  |Linux  |
|---------|---------|---------|---------|
|[Configure Dev Spaces](dev-spaces.md)     |   [DevSpaces.ps1](https://acsicorp.sharepoint.com/sites/3MDigitalGGKAnalysts/Shared%20Documents/General/Tools/DevSpaces/DevSpaces.ps1)      |   [DevSpaces.ps1](https://acsicorp.sharepoint.com/sites/3MDigitalGGKAnalysts/Shared%20Documents/General/Tools/DevSpaces/DevSpaces.ps1)      |  [new_dev_space.sh](https://acsicorp.sharepoint.com/sites/3MDigitalGGKAnalysts/Shared%20Documents/General/Tools/DevSpaces/new_dev_space.sh)       |

