module "resource_group" {
  
  source = "../../modules/azurerm_resource_group"
  rg_dev = var.resource_group
}

module "virtual_network" {
  
  source = "../../modules/azurerm_virtual_network"
  depends_on = [ module.resource_group ]
  vnet_dev= var.virtual_network
}

module "subnets" {
  
  depends_on = [ module.resource_group,module.virtual_network ]
  source = "../../modules/azurerm_subnet"
  subnets_dev= var.subnets
}

module "public_ip" {
  
  source = "../../modules/azurerm_public_ip"
  depends_on = [ module.resource_group ]
  pip_dev = var.public_ip
}

module "network_interface" {
  
  source = "../../modules/azurerm_network_interface"
  depends_on = [ module.resource_group, module.public_ip, module.subnets ]
  interface_dev= var.network_interface
  subnets_dev = var.subnets
  pip_dev = var.public_ip
}