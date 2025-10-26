variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "admin_username" {
  description = "Admin username for Linux VMs"
  type        = string
}

variable "ssh_public_key" {
  description = "Path to your SSH public key"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}