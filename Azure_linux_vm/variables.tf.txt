# Variables for general configuration

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "pavan_rg"
}

variable "location" {
  description = "Location for the resources"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Environment tag (e.g., Production, Development)"
  type        = string
  default     = "Production"
}

# Variables for VNet, Subnet and NSG

variable "virtual_network_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "pavan_vnet"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
  default     = "subnet1"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the Subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
  default     = "pavan_nsg"
}

# Variables for IP and NIC

variable "public_ip_name" {
  description = "Name of the Public IP"
  type        = string
  default     = "pavan_ip"
}

variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
  default     = "pavan_nic"
}

# Variables for Virtual Machine

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
  default     = "pavan-vm"
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
  default     = "Standard_B2ms"
}

variable "admin_username" {
  description = "Admin username for the Virtual Machine"
  type        = string
  default     = "adminuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}
