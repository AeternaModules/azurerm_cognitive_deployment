resource "azurerm_cognitive_deployment" "cognitive_deployments" {
  for_each = var.cognitive_deployments

  cognitive_account_id       = each.value.cognitive_account_id
  name                       = each.value.name
  dynamic_throttling_enabled = each.value.dynamic_throttling_enabled
  rai_policy_name            = each.value.rai_policy_name
  version_upgrade_option     = each.value.version_upgrade_option

  model {
    format  = each.value.model.format
    name    = each.value.model.name
    version = each.value.model.version
  }

  sku {
    capacity = each.value.sku.capacity
    family   = each.value.sku.family
    name     = each.value.sku.name
    size     = each.value.sku.size
    tier     = each.value.sku.tier
  }
}

