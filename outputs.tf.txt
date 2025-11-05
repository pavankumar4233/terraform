output "vm_public_ip" {
  description = "The public IP address of the VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_id" {
  description = "The ID of the VM"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "The name of the VM"
  value       = azurerm_linux_virtual_machine.vm.name
}

