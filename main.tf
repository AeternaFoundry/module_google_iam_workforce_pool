resource "google_iam_workforce_pool" "iam_workforce_pools" {
  for_each = var.iam_workforce_pools

  location          = each.value.location
  parent            = each.value.parent
  workforce_pool_id = each.value.workforce_pool_id
  deletion_policy   = each.value.deletion_policy
  description       = each.value.description
  disabled          = each.value.disabled
  display_name      = each.value.display_name
  session_duration  = each.value.session_duration

  dynamic "access_restrictions" {
    for_each = each.value.access_restrictions != null ? [each.value.access_restrictions] : []
    content {
      dynamic "allowed_services" {
        for_each = access_restrictions.value.allowed_services != null ? access_restrictions.value.allowed_services : []
        content {
          domain = allowed_services.value.domain
        }
      }
      disable_programmatic_signin = access_restrictions.value.disable_programmatic_signin
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

