output "iam_workforce_pools_id" {
  description = "Map of id values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no id are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_workforce_pools_access_restrictions" {
  description = "Map of access_restrictions values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no access_restrictions are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => one(v.access_restrictions) if v.access_restrictions != null && length(v.access_restrictions) > 0 }
}
output "iam_workforce_pools_deletion_policy" {
  description = "Map of deletion_policy values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no deletion_policy are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "iam_workforce_pools_description" {
  description = "Map of description values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no description are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iam_workforce_pools_disabled" {
  description = "Map of disabled values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no disabled are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.disabled if v.disabled != null }
}
output "iam_workforce_pools_display_name" {
  description = "Map of display_name values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no display_name are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iam_workforce_pools_location" {
  description = "Map of location values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no location are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.location if v.location != null && length(v.location) > 0 }
}
output "iam_workforce_pools_name" {
  description = "Map of name values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no name are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_workforce_pools_parent" {
  description = "Map of parent values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no parent are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "iam_workforce_pools_session_duration" {
  description = "Map of session_duration values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no session_duration are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.session_duration if v.session_duration != null && length(v.session_duration) > 0 }
}
output "iam_workforce_pools_state" {
  description = "Map of state values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no state are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "iam_workforce_pools_workforce_pool_id" {
  description = "Map of workforce_pool_id values across all iam_workforce_pools, keyed the same as var.iam_workforce_pools except keys with no workforce_pool_id are omitted"
  value       = { for k, v in google_iam_workforce_pool.iam_workforce_pools : k => v.workforce_pool_id if v.workforce_pool_id != null && length(v.workforce_pool_id) > 0 }
}

