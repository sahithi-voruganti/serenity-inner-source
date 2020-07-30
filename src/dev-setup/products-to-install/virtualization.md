### Overview
If your development environment runs on Windows you must setup virtualization in order to run docker containers locally since some of them run on Linux which Windows does not natively support.  This is not necessary on a MacOS since it's based on Unix.  Which virtualization product you use is a matter of preference and is typically influence by the OS of your host machine.  Historically, Hyper-V was popular for servers and VirtualBox on clients.  

### Virtualization Product
|PRODUCT  |VENDOR  |GUIDES  |
|---------|---------|---------|
|[Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)     | Microsoft        |   [MS Install Guide](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-startenable-hyper-v)      |
|[Virtual Box](https://www.virtualbox.org/)     |   Oracle      |   - [Docker for Mac](https://www.docker.com/blog/docker-for-mac-windows-beta/)<br/>   - [Using Docker with Virutal Box on Windows](https://medium.com/@peorth/using-docker-with-virtualbox-and-windows-10-b351e7a34adc)      |

### Prepare Virtual Machine using Hyper-V
1. Enable Hyper-V.  [Click for more details](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v).
2. Create a Virtual Machine.  [Click for more details](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/quick-create-virtual-machine).  Note: Microsoft offers instances of Ubuntu and an evaluation copy of Windows.  Currently the evaluation only last 5 days so it's not a great option unless you have an Win 10 Enterprise Key to use to upgrade.  Otherwise you need an ISO and License Key for the OS you intend to install.  Using the eval requires a 16GB download.   
3. Prepare Installation Media
4. Create Virtual Machine

### Prepare Installation Media
If you're going to use your own copy of an operating system, you need to first create an ISO so Hyper-V or VirtualBox can use it to build the Virtual Machine.  Microsoft provides a useful tool called **Create Windows 10 installation media** that can be downloaded here https://www.microsoft.com/en-us/software-download/windows10. The link includes instructions on how to use. 
 
The above approach can also be used for Windows 8.1 and Windows 7.   Alternatively there are several open source and 3rd party products that can be used to create ISO. 

### Create Virtual Machine
Once you have your ISO, you can start the create virtual machine process.  To continue, follow these steps: https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/quick-create-virtual-machine

### Alternative
As untried alternative to virtualization, if you're using Windows you could try the Linux subsystem for Windows.  
Note: We have not tried this.  Key consideration is whether or not docker images can be instantiated.

Use Windows Subsystem for Linux for production: https://docs.microsoft.com/en-us/windows/nodejs/setup-on-windows#use-windows-subsystem-for-linux-for-production

The Windows Subsystem for Linux, introduced in the [Anniversary Update](https://www.howtogeek.com/248177/whats-new-in-windows-10s-anniversary-update/), became a stable feature in the [Fall Creators Update](https://www.howtogeek.com/306610/whats-new-in-windows-10s-fall-creators-update/). You can now run Ubuntu and openSUSE on Windows, with Fedora and more Linux distributions coming soon.

This documented might be a good guide: https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment?tabs=Windows-10-Client