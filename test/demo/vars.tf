variable "hub_resource_group" {
  description = "Name of the hub resource group"
  type        = string
}

variable "vm_resource_group" {
  description = "Name of the vm resource group"
  type        = string
}

variable "sku_size" {
  description = "VM Size"
  type        = string
}

variable "project" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The environment type"
  type        = string
}

variable "instance" {
  description = "The instance number"
  type        = string
}

variable "pod" {
  description = "the best pod in ce05"
  type        = string
}

variable "admin_username" {
  description = "Admin Username"
  type        = string
}

variable "network_interface_name" {
  description = "The name of the network interface"
  type        = string
}

variable "virtual_network" {
  description = "The name of the virtual network"
  type        = string
}

variable "filepath" {
    description = "Key file path"
    type = string
}