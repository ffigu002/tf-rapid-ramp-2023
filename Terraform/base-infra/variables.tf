variable "location" {
  type = string
  description = "Azure Region"
  default = "eastus2"
}

##BACKEND VARIABLES

variable "backend_resource_group_name" {
  type = string
  description = "backend RG name"
  default = null
}
variable "backend_storage_account_name" {
  type = string
  description = "backend storage account name"
  default = null
}

variable "backend_container_name" {
  type = string
  description = "backend container name"
  default = null
}

