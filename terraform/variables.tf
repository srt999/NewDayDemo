
variable "resource_groups" {
  description = "(Required) The name of the Resource Groups to be provisioned. Changing this forces a new resource to be created."
  type = map(object({
    name     = string,
    location = string
    }
  ))
}

variable "vnet" {
  description = "(Required) Details of VNETS to be provisioned. Changing this forces a new resource to be created."
  type = object({
    name          = string
    address_space = list(string)
    dns_servers   = list(string)
    rsg_key       = string
    subnets       = map(any)
  })
}

variable "appsvcplan" {
  description = "(Required) The name of the App service plan"
  type = object({
    name    = string
    rsg_key = string
    os_type = string
    sku     = string
  })
}

variable "webapp" {
  description = "(Required) The name of the App service plan"
  type = object({
    name    = string
    rsg_key = string
  })
}
