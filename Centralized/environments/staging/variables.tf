variable "environment" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }
variable "vnet_name" { type = string }
variable "subnet_name" { type = string }
variable "address_space" { type = list(string) default = ["10.0.0.0/16"] }
variable "subnet_prefixes" { type = list(string) default = ["10.0.1.0/24"] }
variable "public_ip_name" { type = string }
variable "nic_name" { type = string }
variable "vm_name" { type = string }
variable "vm_size" { type = string }
variable "admin_username" { type = string }
variable "ssh_public_key_path" { type = string }
