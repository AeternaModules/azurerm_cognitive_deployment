output "cognitive_deployments_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.cognitive_account_id }
}
output "cognitive_deployments_dynamic_throttling_enabled" {
  description = "Map of dynamic_throttling_enabled values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.dynamic_throttling_enabled }
}
output "cognitive_deployments_model" {
  description = "Map of model values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.model }
}
output "cognitive_deployments_name" {
  description = "Map of name values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.name }
}
output "cognitive_deployments_rai_policy_name" {
  description = "Map of rai_policy_name values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.rai_policy_name }
}
output "cognitive_deployments_sku" {
  description = "Map of sku values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.sku }
}
output "cognitive_deployments_version_upgrade_option" {
  description = "Map of version_upgrade_option values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.version_upgrade_option }
}

