### Overview
This guide provides the steps to get the Microsoft's original solution running.  
 
https://docs.microsoft.com/en-us/azure/iot-accelerators/iot-accelerators-remote-monitoring-customize

### Step 1
#### Deploy Azure Resources
Deploy resources to a trial subscription or existing using the following link:
 
https://www.azureiotsolutions.com/Accelerators
https://www.azureiotsolutions.com/Accelerators#description/remote-monitoring 

### Step 2
Download and extract the source code from here: https://github.com/Azure/pcs-remote-monitoring-webui

### Step 3
Update the Virtual Machine:
1. Deploy a **basic** instance of the solution accelerator using the **pcs** CLI. Make a note of the name of your deployment and the credentials you provided for the virtual machine. For more information, see [Deploy using the CLI](https://docs.microsoft.com/en-us/azure/iot-accelerators/iot-accelerators-remote-monitoring-deploy-cli).

2. To enable SSH access to the virtual machine that hosts the microservices in your solution, use the Azure portal or the Azure Cloud Shell. For example:
    1. > az network nsg rule update --name SSH --nsg-name {your solution name}-nsg --resource-group {your solution name} --access Allow
    1. Only enable SSH access during test and development. If you enable SSH, [you should disable it as soon as you're finished using it](https://docs.microsoft.com/en-us/azure/security/fundamentals/network-best-practices#disable-rdpssh-access-to-virtual-machines).

3. Use the Azure portal or the Azure Cloud Shell to find the name and public IP address of your virtual machine. For example:
    1. > az resource list --resource-group {your solution name} -o table az vm list-ip-addresses --name {your vm name from previous command} --resource-group {your solution name} -o table

4. Use SSH to connect to your virtual machine. Use the IP address from the previous step, and the credentials you provided when you ran **pcs** to deploy the solution. The ssh command is available in the Azure Cloud Shell.

5. To allow the local UX to connect, run the following commands at the bash shell in the virtual machine:
    1. > cd /app
    1. > sudo ./start.sh --unsafe

6. After you see the command completes and the web site starts, you can disconnect from the virtual machine.

### Step 4
To install the required libraries and run the UI locally, run the following commands:
npm install
npm start
 
In your local copy of the azure-iot-pcs-remote-monitoring-webui repository, edit the **.env** file to add the URL of your deployed solution:
 
> NODE_PATH = src/<br/>
REACT_APP_BASE_SERVICE_URL=https://{your solution name}.azurewebsites.net/
 
At a command prompt, navigate to your local copy of the `azure-iot-pcs-remote-monitoring-webui` folder.