$Region = "WestUS2"
$ResourceGroup = "asc-lab"
Login-AzureRmAccount
New-AzureRmResourceGroup -Name $ResourceGroup -Location $Region
New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroup -Name "$($ResourceGroup)-resources" -TemplateFile .\infrastructure\arm-template.json