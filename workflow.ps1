
$resourceGroupName = "webApplicationRG"
$location = "brazilsouth"

#Deploy new Resource Group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Deploy simple IaaS template
New-AzResourceGroupDeployment `
    -Name myDeployment001 `
    -ResourceGroupName $resourceGroupName `
    -TemplateUri "E:\azure-assessment\azuredeploy2.json" `
    -TemplateParameterFile "E:\azure-assessment\azuredeploy2.parameters.json"
