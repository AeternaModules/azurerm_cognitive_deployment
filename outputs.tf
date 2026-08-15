output "cognitive_deployments_id" {
  description = "Map of id values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognitive_deployments_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.cognitive_account_id if v.cognitive_account_id != null && length(v.cognitive_account_id) > 0 }
}
output "cognitive_deployments_dynamic_throttling_enabled" {
  description = "Map of dynamic_throttling_enabled values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.dynamic_throttling_enabled if v.dynamic_throttling_enabled != null }
}
output "cognitive_deployments_model" {
  description = "Map of model values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => one(v.model) if v.model != null && length(v.model) > 0 }
}
output "cognitive_deployments_name" {
  description = "Map of name values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognitive_deployments_rai_policy_name" {
  description = "Map of rai_policy_name values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.rai_policy_name if v.rai_policy_name != null && length(v.rai_policy_name) > 0 }
}
output "cognitive_deployments_sku" {
  description = "Map of sku values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => one(v.sku) if v.sku != null && length(v.sku) > 0 }
}
output "cognitive_deployments_version_upgrade_option" {
  description = "Map of version_upgrade_option values across all cognitive_deployments, keyed the same as var.cognitive_deployments"
  value       = { for k, v in azurerm_cognitive_deployment.cognitive_deployments : k => v.version_upgrade_option if v.version_upgrade_option != null && length(v.version_upgrade_option) > 0 }
}

