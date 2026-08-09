resource_group = {
  dev_01 = {
    name     = "dev_rg-01"
    location = "eastus"
  }
  dev_02 = {
    name     = "dev_rg-02"
    location = "eastus"
  }
}

virtual_network = {
  dev_01 = {
    name                = "app_vnet"
    location            = "westus"
    address_space       = ["192.168.10.0/24"]
    resource_group_name = "dev_rg-01"
  }
  dev_02 = {
    name                = "web_vnet"
    location            = "westus"
    address_space       = ["172.32.0.0/24"]
    resource_group_name = "dev_rg-01"
  }
}

subnets = {
  dev_01 = {
    name                 = "frontend_subnet"
    address_prefixes     = ["192.168.10.0/26"]
    resource_group_name  = "dev_rg-01"
    virtual_network_name = "app_vnet"
  }
  dev_02 = {
    name                 = "backend_subnet"
    address_prefixes     = ["192.168.10.64/26"]
    resource_group_name  = "dev_rg-01"
    virtual_network_name = "app_vnet"
  }
}

public_ip = {
  dev_01 = {
    name                = "frontend_vm_pip"
    resource_group_name = "dev_rg-01"
    location            = "westus"
    allocation_method   = "Static"
  }
  dev_02 = {
    name                = "backend_vm_pip"
    resource_group_name = "dev_rg-01"
    location            = "westus"
    allocation_method   = "Static"
  }
}

network_interface = {
  dev_01 = {
    name                          = "frontend_vm_nic"
    location                      = "westus"
    resource_group_name           = "dev_rg-01"
    ip_config_name                = "nic_app_config_name"
    private_ip_address_allocation = "Dynamic"
  }
  dev_02 = {
    name                          = "backend_vm_nic"
    location                      = "westus"
    resource_group_name           = "dev_rg-01"
    ip_config_name                = "nic_web_config_name"
    private_ip_address_allocation = "Dynamic"
  }
}