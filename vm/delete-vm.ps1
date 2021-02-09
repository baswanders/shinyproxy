$resourceGroup= "drivermaker-dev"
$vmName = "vushinyvm"

az login

az group delete --name $resourceGroup