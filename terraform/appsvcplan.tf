# Create the Linux App Service Plan
resource "azurerm_service_plan" "this" {
  name                = var.appsvcplan.name
  location            = azurerm_resource_group.this[var.appsvcplan.rsg_key].location
  resource_group_name = azurerm_resource_group.this[var.appsvcplan.rsg_key].name
  os_type             = "Linux"
  sku_name            = "B1"
}


