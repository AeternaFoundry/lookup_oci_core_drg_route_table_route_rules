variable "core_drg_route_table_route_rules_lookup" {
  description = <<EOT
Map of core_drg_route_table_route_rules_lookup, attributes below
Required:
    - drg_route_table_id
Optional:
    - route_type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    drg_route_table_id = string
    route_type         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

