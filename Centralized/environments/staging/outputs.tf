output "vm_public_ip" { value = module.compute.vm_public_ip }
output "vm_name"      { value = module.compute.vm_name }
output "nic_id"       { value = module.compute.nic_id }
output "subnet_id"    { value = module.network.subnet_id }
output "rg_name"      { value = module.rg.name }
