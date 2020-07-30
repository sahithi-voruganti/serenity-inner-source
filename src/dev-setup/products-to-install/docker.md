### Installation guide for Docker
Docker is a set of platform as a service products that uses OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels.  To install it, following the guides below specific to your operating system.

### Docker on Mac
Installation instructions for installing Docker on a Mac can be found [here](https://docs.docker.com/docker-for-mac/).

### Docker on Windows
#### What to know before installation: 

- Windows 10 64-bit: Pro, Enterprise, or Education (Build 15063 or later).
- Hyper-V and Containers Windows features must be enabled.
- The following hardware prerequisites are required to successfully run Client Hyper-V on Windows 10:
    - 64-bit processor with [Second Level Address Translation (SLAT)](http://en.wikipedia.org/wiki/Second_Level_Address_Translation)
    - 4GB system RAM
    - BIOS-level hardware virtualization support must be enabled in the BIOS settings. For more information, see Virtualization.

For additional information about requirements see: [What to know before you install](https://docs.docker.com/docker-for-windows/install/#what-to-know-before-you-install).

#### Steps to setup Docker on Windows
- Download Docker Desktop https://hub.docker.com/editions/community/docker-ce-desktop-windows/
- Double-click Docker Desktop Installer.exe to run the installer.
- If you haven’t already downloaded the installer (Docker Desktop Installer.exe), you can get it from [Docker Hub](https://hub.docker.com/editions/community/docker-ce-desktop-windows/). It typically downloads to your Downloads folder, or you can run it from the recent downloads bar at the bottom of your web browser.
- Follow instructions on the installation wizard to accept the license, authorize the installer, and proceed with the install.
- When prompted, authorize the Docker Desktop Installer with your system password during the install process. Privileged access is needed to install networking components, links to the Docker apps, and manage the Hyper-V VMs.
- Click Finish on the setup complete dialog and launch the Docker Desktop application.
 
For additional information, see [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/).
To test your installation, follow [this guide](https://docs.docker.com/docker-for-windows/#system-requirements#test-your-installation).  

#### Alternative Setup
It might now be possible to use use Docker on Windows without having to virtualize thanks to the release of the Linux subsystem for Windows.  This approach has not been tested to determine if it will work for this solution.  It allows you to run Unbuntu and openSUSE on Windows, with Fedora and more Linux distributions coming soon.  
 
As untried alternative to virtualization, if you're using Windows you could try the Linux subsystem for Windows.  
Note: We have not tried this.  Key consideration is whether or not docker images can be instantiated.  
 
This documented might be a good guide: https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment?tabs=Windows-10-Client
 
For additional information on the Linux Subsystem: 
The Windows Subsystem for Linux, introduced in the [Anniversary Update](https://www.howtogeek.com/248177/whats-new-in-windows-10s-anniversary-update/), became a stable feature in the [Fall Creators Update](https://www.howtogeek.com/248177/whats-new-in-windows-10s-anniversary-update/).