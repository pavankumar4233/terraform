output "vm_id"        { value = azurerm_linux_virtual_machine.this.id }
output "vm_name"      { value = azurerm_linux_virtual_machine.this.name }
output "nic_id"       { value = azurerm_network_interface.this.id }
output "public_ip_id" { value = azurerm_public_ip.this.id }
output "vm_public_ip" {
  value       = azurerm_public_ip.this.ip_address
  description = "The VM public IP (may be null until provisioned)"
}
