locals {
  common_tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

module "rg" {
  source   = "../../modules/resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source              = "../../modules/network"
  resource_group_name = module.rg.name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes
  tags                = local.common_tags
}

module "compute" {
  source              = "../../modules/compute"
  resource_group_name = module.rg.name
  location            = var.location
  subnet_id           = module.network.subnet_id
  public_ip_name      = var.public_ip_name
  nic_name            = var.nic_name
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key_path = var.ssh_public_key_path
  tags                = local.common_tags
}
