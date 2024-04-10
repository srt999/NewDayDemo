# NewDayDemo
Code repository to Demo simple automated web app deployment in to Azure

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.90.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_web_app.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.90.0/docs/resources/linux_web_app) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.90.0/docs/resources/resource_group) | resource |
| [azurerm_service_plan.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.90.0/docs/resources/service_plan) | resource |
| [azurerm_subnet.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.90.0/docs/resources/subnet) | resource |
| [azurerm_virtual_network.this](https://registry.terraform.io/providers/hashicorp/azurerm/3.90.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appsvcplan"></a> [appsvcplan](#input\_appsvcplan) | (Required) The name of the App service plan | <pre>object({<br>    name    = string<br>    rsg_key = string<br>    os_type = string<br>    sku     = string<br>  })</pre> | n/a | yes |
| <a name="input_resource_groups"></a> [resource\_groups](#input\_resource\_groups) | (Required) The name of the Resource Groups to be provisioned. Changing this forces a new resource to be created. | <pre>map(object({<br>    name     = string,<br>    location = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_vnet"></a> [vnet](#input\_vnet) | (Required) Details of VNETS to be provisioned. Changing this forces a new resource to be created. | <pre>object({<br>    name          = string<br>    address_space = list(string)<br>    dns_servers   = list(string)<br>    rsg_key       = string<br>    subnets       = map(any)<br>  })</pre> | n/a | yes |
| <a name="input_webapp"></a> [webapp](#input\_webapp) | (Required) The name of the App service plan | <pre>object({<br>    name    = string<br>    rsg_key = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->