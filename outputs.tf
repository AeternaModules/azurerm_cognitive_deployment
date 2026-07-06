output "cognitive_deployments" {
  description = "All cognitive_deployment resources"
  value       = azurerm_cognitive_deployment.cognitive_deployments
}
output "cognitive_deployments_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.cognitive_account_id]
}
output "cognitive_deployments_dynamic_throttling_enabled" {
  description = "List of dynamic_throttling_enabled values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.dynamic_throttling_enabled]
}
output "cognitive_deployments_model" {
  description = "List of model values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.model]
}
output "cognitive_deployments_name" {
  description = "List of name values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.name]
}
output "cognitive_deployments_rai_policy_name" {
  description = "List of rai_policy_name values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.rai_policy_name]
}
output "cognitive_deployments_sku" {
  description = "List of sku values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.sku]
}
output "cognitive_deployments_version_upgrade_option" {
  description = "List of version_upgrade_option values across all cognitive_deployments"
  value       = [for k, v in azurerm_cognitive_deployment.cognitive_deployments : v.version_upgrade_option]
}

