locals {
  vm_name = format("vm-%s-%s-%s-%03d", var.pod, var.project, var.environment, var.instance)
  network_interface_name = format("net-%s-%s-%s-%03d", var.pod, var.project, var.environment, var.instance)
  ip_config_name = format("ip-%s-%s-%s-%03d", var.pod, var.project, var.environment, var.instance)
}

data "azurerm_resource_group" "hub" {
  name     = var.hub_resource_group
}

data "azurerm_resource_group" "vm_rg" {
  name = var.vm_resource_group
}

resource "azurerm_network_interface" "example" {
  name                = local.network_interface_name
  location            = data.azurerm_resource_group.vm_rg.location
  resource_group_name = data.azurerm_resource_group.vm_rg.name

  ip_configuration {
    name = local.ip_config_name
    subnet_id = var.subnet_id
    private_ip_address_allocation = "Dynamic" 
  }
}

resource "azurerm_linux_virtual_machine" "example" {

    name = local.vm_name
    resource_group_name = data.azurerm_resource_group.vm_rg.name
    location = data.azurerm_resource_group.vm_rg.location
    size = var.sku_size

    network_interface_ids = [azurerm_network_interface.example.id]

    admin_username = var.admin_username
    admin_ssh_key {
      public_key = file(var.filepath)
      username = var.admin_username
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

