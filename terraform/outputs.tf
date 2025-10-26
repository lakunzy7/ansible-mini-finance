# Outputs
output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "admin_user" {
  value = var.admin_username
}

output "ssh_commands" {
  description = "SSH commands to access each VM"
  value = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
}