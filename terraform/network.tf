
# Create Virtual Network 
resource "azurerm_virtual_network" "this" {
  name                = var.vnet.name
  resource_group_name = azurerm_resource_group.this[var.vnet.rsg_key].name
  location            = azurerm_resource_group.this[var.vnet.rsg_key].location
  address_space       = var.vnet.address_space
}

# Create Subnet 
resource "azurerm_subnet" "this" {
  for_each             = { for key, value in var.vnet.subnets : key => value }
  name                 = each.value.name
  resource_group_name  = azurerm_virtual_network.this.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = each.value.address_prefixes
  service_endpoints    = lookup(each.value, "service_endpoints", [])


  dynamic "delegation" {
    for_each = lookup(each.value, "service_delegation", {})
    content {
      name = lookup(each.value, "delegation_name", null)
      service_delegation {
        name    = lookup(delegation.value, "name", null)
        actions = lookup(delegation.value, "actions", null)
      }
    }
  }
}
