### Installation guide for Helm
#### Prerequisites:
- You will need the command line program kubectl installed on your Windows 10 computer and configured to work with a Kubernetes Cluster.
- 7-Zip compression / decompression program is needed to extract the Helm program for Windows from the compressed file-folder from the Helm site.  You can download it here: https://www.7-zip.org/download.html

#### Steps to Install:
- Download the latest version of the compressed executable from the Helm GitHub site, https://github.com/kubernetes/helm/releases.
- Navigate to the folder you downloaded the helm-vX.X.X-windows-amd64.tar.gz compressed file from and move the file to its own directory.
- Navigate to the new directory and right click on the tar.gz file and with 7Zip, open the tar.gz archive.
- Double click the single tar file in that directory, helm-v2.7.2-windows-amd64.tar.
- You should now see a windows file folder in the 7Zip window, windows-amd64. Right click on the folder, select Copy To, and select the directory you want to copy the folder to.
- add the helm program to the System File path to make it easily accessible from the command line.
- Open the Control Panel’s System panel.
- Select the Advanced system settings link on the left.
- Select Environment Variables.
- Under System variables, select Path, and then select Edit.
- Select the New button and then add the folder path where you copied the helm folder to and then press OK.
- Open a new command line window and type helm on the command line to make sure you have access to helm from the command line.
- Assuming you have the kubectl program configured for your Kubernetes cluster you can now initialize helm.
- Now you are ready to deploy Kubernetes applications to your kube cluster.

**Note:** Ubuntu and an evaluation copy of Windows.  Otherwise you need an ISO and License Key for the OS you intend to install.  Using the eval requires a 16GB download.   