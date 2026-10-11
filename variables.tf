variable "access_control_rule_sets" {
  description = <<EOT
Map of access_control_rule_sets, attributes below
Required:
    - name
Optional:
    - api
    - grant_rules (block):
        - principals (optional)
        - role (required)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    name = string
    api  = optional(string)
    grant_rules = optional(list(object({
      principals = optional(set(string))
      role       = string
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

