data "azurerm_subnet" "default" {
  name                 = "default"
  virtual_network_name = "vnet-ce05-00"
  resource_group_name  = "rg-kubce05-hub"
}

module "temple_linux_vm" {
  source                 = "../../"
  pod                    = var.pod
  project                = var.project
  environment            = var.environment
  instance               = var.instance
  hub_resource_group     = var.hub_resource_group
  vm_resource_group      = var.vm_resource_group
  virtual_network        = var.virtual_network
  subnet_id              = data.azurerm_subnet.default.id
  network_interface_name = var.network_interface_name
  sku_size               = var.sku_size
  admin_username         = var.admin_username
  filepath               = var.filepath
}
