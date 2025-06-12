$resourceGroup = "MyResourceGroup"
$location = "EastUS"
$vmName = "MyUbuntuVM"

New-AzResourceGroup -Name $resourceGroup -Location $location

New-AzVm `
    -ResourceGroupName $resourceGroup `
    -Name $vmName `
    -Location $location `
    -VirtualNetworkName "MyVnet" `
    -SubnetName "MySubnet" `
    -SecurityGroupName "MyNetworkSecurityGroup" `
    -PublicIpAddressName "MyPublicIP" `
    -OpenPorts 22 `
    -ImageName "Canonical:ubuntu-24_04-lts:server:latest" `
