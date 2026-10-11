output "access_control_rule_sets_id" {
  description = "Map of id values across all access_control_rule_sets, keyed the same as var.access_control_rule_sets except keys with no id are omitted"
  value       = { for k, v in databricks_access_control_rule_set.access_control_rule_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_control_rule_sets_api" {
  description = "Map of api values across all access_control_rule_sets, keyed the same as var.access_control_rule_sets except keys with no api are omitted"
  value       = { for k, v in databricks_access_control_rule_set.access_control_rule_sets : k => v.api if v.api != null && length(v.api) > 0 }
}
output "access_control_rule_sets_etag" {
  description = "Map of etag values across all access_control_rule_sets, keyed the same as var.access_control_rule_sets except keys with no etag are omitted"
  value       = { for k, v in databricks_access_control_rule_set.access_control_rule_sets : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "access_control_rule_sets_grant_rules" {
  description = "Map of grant_rules values across all access_control_rule_sets, keyed the same as var.access_control_rule_sets except keys with no grant_rules are omitted"
  value       = { for k, v in databricks_access_control_rule_set.access_control_rule_sets : k => v.grant_rules if v.grant_rules != null && length(v.grant_rules) > 0 }
}
output "access_control_rule_sets_name" {
  description = "Map of name values across all access_control_rule_sets, keyed the same as var.access_control_rule_sets except keys with no name are omitted"
  value       = { for k, v in databricks_access_control_rule_set.access_control_rule_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "access_control_rule_sets_provider_config" {
  description = "Map of provider_config values across all access_control_rule_sets, keyed the same as var.access_control_rule_sets except keys with no provider_config are omitted"
  value       = { for k, v in databricks_access_control_rule_set.access_control_rule_sets : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

