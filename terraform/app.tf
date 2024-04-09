# Create the web app, pass in the App Service Plan ID
resource "azurerm_linux_web_app" "this" {
  name                = var.webapp.name
  location            = azurerm_resource_group.this[var.appsvcplan.rsg_key].location
  resource_group_name = azurerm_resource_group.this[var.appsvcplan.rsg_key].name
  service_plan_id     = azurerm_service_plan.this.id
  https_only          = true
  site_config {
    minimum_tls_version = "1.2"
  }
}
