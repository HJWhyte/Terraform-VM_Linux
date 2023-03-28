## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_resource_group.hub](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [azurerm_resource_group.vm_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | Admin Username | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment type | `string` | n/a | yes |
| <a name="input_filepath"></a> [filepath](#input\_filepath) | Key file path | `string` | n/a | yes |
| <a name="input_hub_resource_group"></a> [hub\_resource\_group](#input\_hub\_resource\_group) | Name of the hub resource group | `string` | n/a | yes |
| <a name="input_instance"></a> [instance](#input\_instance) | The instance number | `string` | n/a | yes |
| <a name="input_network_interface_name"></a> [network\_interface\_name](#input\_network\_interface\_name) | The name of the network interface | `string` | n/a | yes |
| <a name="input_pod"></a> [pod](#input\_pod) | the best pod in ce05 | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The name of the project | `string` | n/a | yes |
| <a name="input_sku_size"></a> [sku\_size](#input\_sku\_size) | VM Size | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID | `string` | n/a | yes |
| <a name="input_virtual_network"></a> [virtual\_network](#input\_virtual\_network) | The name of the virtual network | `string` | n/a | yes |
| <a name="input_vm_resource_group"></a> [vm\_resource\_group](#input\_vm\_resource\_group) | Name of the vm resource group | `string` | n/a | yes |

## Outputs

No outputs.
