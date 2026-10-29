variable "location" {
  description = "Azure region for the workload."
  type        = string
  default     = "UK South"
}

variable "virtual_machine_size" {
  description = "Size of the web virtual machine."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Local administrator account for the virtual machine."
  type        = string
  default     = "webadmin"
}

variable "admin_password" {
  description = "Local administrator password for the virtual machine."
  type        = string
  sensitive   = true
}
