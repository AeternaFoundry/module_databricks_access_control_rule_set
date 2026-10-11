resource "databricks_access_control_rule_set" "access_control_rule_sets" {
  for_each = var.access_control_rule_sets

  name = each.value.name
  api  = each.value.api

  dynamic "grant_rules" {
    for_each = each.value.grant_rules != null ? each.value.grant_rules : []
    content {
      principals = grant_rules.value.principals
      role       = grant_rules.value.role
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

