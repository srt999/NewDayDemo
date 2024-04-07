
# # Create Virtual Network 
# resource "azurerm_virtual_network" "virtual_network" {
#   name                = "${var.resource_prefix}-vn-${local.virtual_network_resource_instance}"
#   resource_group_name = local.resource_group_name
#   location            = local.resource_group_location
#   address_space       = var.address_space
# }

# # Create Subnet 
# resource "azurerm_subnet" "subnet" {
#   name                                           = "${var.resource_prefix}-sub-${var.subnet_name}-${local.subnet_resource_instance}"
#   resource_group_name                            = local.resource_group_name
#   virtual_network_name                           = azurerm_virtual_network.virtual_network.name
#   address_prefixes                               = var.address_prefixes
#   service_endpoints                              = var.subnet_service_endpoints


#   dynamic "delegation" {
#     for_each = var.service_delegation
#     content {
#       name = "delegation_name_${delegation.key}"
#       service_delegation {
#         name = delegation.value.name
#       }
#     }
#   }
# }
