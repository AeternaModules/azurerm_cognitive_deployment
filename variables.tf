variable "cognitive_deployments" {
  description = <<EOT
Map of cognitive_deployments, attributes below
Required:
    - cognitive_account_id
    - name
    - model (block):
        - format (required)
        - name (required)
        - version (optional)
    - sku (block):
        - capacity (optional)
        - family (optional)
        - name (required)
        - size (optional)
        - tier (optional)
Optional:
    - dynamic_throttling_enabled
    - rai_policy_name
    - version_upgrade_option
EOT

  type = map(object({
    cognitive_account_id       = string
    name                       = string
    dynamic_throttling_enabled = optional(bool)
    rai_policy_name            = optional(string)
    version_upgrade_option     = optional(string, "OnceNewDefaultVersionAvailable")
    model = object({
      format  = string
      name    = string
      version = optional(string)
    })
    sku = object({
      capacity = optional(number, 1)
      family   = optional(string)
      name     = string
      size     = optional(string)
      tier     = optional(string)
    })
  }))
}

