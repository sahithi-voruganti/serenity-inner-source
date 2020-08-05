# Installation guide for Kubernetes

## Steps to set up a kubectl on Windows

- Download the kubectl.exe using a [link](https://kubernetes.io/docs/tasks/tools/install-kubectl/) and save the file in any folder on windows file system.
- Add the kubectl.exe folder location in path variable - “Advanced System Settings -> Advanced -> Environment Variables -> Path”. For example, if you have saved file to C:/kube then add this folder path to the path variable.
- Open a command prompt and type kubectl and you should see all commands supported by kubectl.

## Install minikube *(Not Mandatory)

- VT-x or AMD-v virtualization must be enabled in your computer’s BIOS.
- Install the virtualization platform such as Virtualbox or KVM. You are not really required to configure the image.
- Download the minikube-windows-amd64 file from [here](https://github.com/kubernetes/minikube/releases).
- Add this folder path location in path variable: “Advanced System Settings -> Advanced -> Environment Variables -> Path.” For example, if you have saved the file to C:/kube then add this folder path to the path variable.
- Open the command prompt and fire a command minikube and you should see all the commands supported by minikube.

On windows, you can get similar kind of linux kind of user experience with Cygwin. Install Cygwin by following the steps listed on [its website](https://cygwin.com/install.html.).

**Start minikube :**

- Open the Cygwin terminal and run command $ minikube start.
- Run command kubectl version   to confirm the working of minikube.
