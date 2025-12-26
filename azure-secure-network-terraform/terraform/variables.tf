variable "location" {
  description = "Azure region"
  type        = string
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-secure-network"
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
  default     = "vnet-secure"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnets" {
  description = "Subnet definitions"
  type = list(object({
    name           = string
    address_prefix = string
  }))
  default = [
    { name = "subnet-web", address_prefix = "10.0.1.0/24" },
    { name = "subnet-app", address_prefix = "10.0.2.0/24" },
    { name = "subnet-db", address_prefix = "10.0.3.0/24" }
  ]
}
