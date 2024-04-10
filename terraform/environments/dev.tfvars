
# Map of resource groups
resource_groups = {
  network = {
    name     = "network-rsg"
    location = "UKSouth"
  }
  webapp = {
    name     = "webapp-rsg"
    location = "UKSouth"
  }
}

# VNET and subnet variable
# To Do - Add nsgs and route tables
vnet = {
  name          = "vnet-default"
  address_space = ["10.0.0.0/20"]
  dns_servers   = []
  rsg_key       = "network"

  subnets = {
    appsvcplan = {
      name             = "appsvcplan-subnet"
      address_prefixes = ["10.0.0.0/27"]
      nsg              = []
    }
    demowebapp = {
      name             = "demowebapp-subnet"
      address_prefixes = ["10.0.0.128/27"]
      nsg              = []
    }
  }
}

# App svc plan details
appsvcplan = {
  name    = "asp-webapp-default"
  rsg_key = "webapp"
  os_type = "Linux"
  sku     = "B1"
}

# Web App details
webapp = {
  name    = "webapp-demo"
  rsg_key = "webapp"
  os_type = "Linux"
  sku     = "B1"
}

#TO DO - Add custom app config details