$resourceGroup= "vushinyvm3"
$vmName = "vushinyvm3"

az login

# Create resource group (this cannot be done with the arm template)
az group create --name $resourceGroup --location "West Europe"

# Create VM with linux and cloud-init
az vm create --resource-group $resourceGroup --name $vmName --image UbuntuLTS --admin-username azureuser --generate-ssh-keys --custom-data cloud-init.txt

# Open port 80 to allow internet traffic
az vm open-port --port 80 --resource-group $resourceGroup --name $vmName

# Open port 443 to allow secure internet traffic
# az vm open-port --port 443 --resource-group $resourceGroup --name $vmName


