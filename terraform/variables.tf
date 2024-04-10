
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
  type        = any
}

variable "appsvcplan" {
  description = "(Required) The name of the App service plan"
  type        = any
}

variable "webapp" {
  description = "(Required) The name of the App service plan"
  type        = any
}

# variable "subnet_name" {
#   description = "(Required) The name of the Subnet"
#   type        = string
# }

# variable "resource_prefix" {
#   description = "The resource Prefix for the Resources."
#   type        = string
# }

# variable "address_space" {
#   description = "(Required) The address space of the vnet , typically larger than /24"
#   type        = list(string)
# }

# variable "address_prefixes" {
#   description = "(Required) The address prefixes to use for the subnet"
#   type        = list(string)
# }

# variable "subnet_service_endpoints" {
#   description = "Service endpoints to enable for this subnet"
#   type        = set(string)
#   default     = []
# }

# variable "service_delegation" {
#   description = "Service delegations to enable for this subnet"
#   type = list(object({
#     name = string
#   }))
#   default = []
# }

# variable "enforce_private_link_endpoint" {
#   description = "Use the subnet for deploying private link endpoints?"
#   type        = bool
#   default     = false
# }
# variable "location" {
#   description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Allowed values (UK South and UK West)"
#   type        = string
#   validation {
#     condition     = contains(["UK South", "UK West"], var.location)
#     error_message = "Valid values for var: location are (UK South and UK West)."
#   }
#   default = "UK South"
# }
