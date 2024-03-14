output "rg-name" {
  value       = azurerm_resource_group.rg.name
  sensitive   = false
  description = "description"
}