locals {
  vm_name = format("vm-%s-%s-%s-%03d", var.pod, var.project, var.environment, var.instance)

}

data "azurerm_resource_group" "hub" {
  name     = var.hub_resource_group
}

data "azurerm_resource_group" "vm_rg" {
  name = var.vm_resource_group
}

data "azurerm_virtual_network" "example" {
  name                = var.virtual_network
  resource_group_name = data.azurerm_resource_group.hub.name
}

resource "azurerm_network_interface" "example" {
  name                = var.network_interface_name
  location            = data.azurerm_resource_group.vm_rg.location
  resource_group_name = data.azurerm_resource_group.vm_rg.name

  ip_configuration {
    name                 = 
    public_ip_address_id =                   
  }
}

resource "azurerm_linux_virtual_machine" "example" {

    name = local.vm_name
    resource_group_name = data.azurerm_resource_group.vm_rg.name
    location = data.azurerm_resource_group.vm_rg.location
    size = var.sku_size

    network_interface_ids = 

    admin_username = var.admin_username
    admin_ssh_key {
      
    }

    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "19.04"
    version   = "latest"
    }
}