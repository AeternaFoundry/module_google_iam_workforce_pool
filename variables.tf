variable "iam_workforce_pools" {
  description = <<EOT
Map of iam_workforce_pools, attributes below
Required:
    - location
    - parent
    - workforce_pool_id
Optional:
    - deletion_policy
    - description
    - disabled
    - display_name
    - session_duration
    - access_restrictions (block):
        - allowed_services (optional, block):
            - domain (optional)
        - disable_programmatic_signin (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location          = string
    parent            = string
    workforce_pool_id = string
    deletion_policy   = optional(string)
    description       = optional(string)
    disabled          = optional(bool)
    display_name      = optional(string)
    session_duration  = optional(string)
    access_restrictions = optional(object({
      allowed_services = optional(list(object({
        domain = optional(string)
      })))
      disable_programmatic_signin = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_workforce_pools : (
        !startswith(v.workforce_pool_id, "gcp-")
      )
    ])
    error_message = "[from ValidateWorkforcePoolId: must not start with \"gcp-\"]"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

