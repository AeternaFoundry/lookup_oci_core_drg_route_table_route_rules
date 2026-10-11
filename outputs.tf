output "core_drg_route_table_route_rules_lookup_id" {
  description = "Map of id values across all core_drg_route_table_route_rules_lookup, keyed the same as var.core_drg_route_table_route_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_drg_route_table_route_rules.core_drg_route_table_route_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_route_table_route_rules_lookup_drg_route_rules" {
  description = "Map of drg_route_rules values across all core_drg_route_table_route_rules_lookup, keyed the same as var.core_drg_route_table_route_rules_lookup except keys with no drg_route_rules are omitted"
  value       = { for k, v in data.oci_core_drg_route_table_route_rules.core_drg_route_table_route_rules_lookup : k => v.drg_route_rules if v.drg_route_rules != null && length(v.drg_route_rules) > 0 }
}
output "core_drg_route_table_route_rules_lookup_drg_route_table_id" {
  description = "Map of drg_route_table_id values across all core_drg_route_table_route_rules_lookup, keyed the same as var.core_drg_route_table_route_rules_lookup except keys with no drg_route_table_id are omitted"
  value       = { for k, v in data.oci_core_drg_route_table_route_rules.core_drg_route_table_route_rules_lookup : k => v.drg_route_table_id if v.drg_route_table_id != null && length(v.drg_route_table_id) > 0 }
}
output "core_drg_route_table_route_rules_lookup_filter" {
  description = "Map of filter values across all core_drg_route_table_route_rules_lookup, keyed the same as var.core_drg_route_table_route_rules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_drg_route_table_route_rules.core_drg_route_table_route_rules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_drg_route_table_route_rules_lookup_route_type" {
  description = "Map of route_type values across all core_drg_route_table_route_rules_lookup, keyed the same as var.core_drg_route_table_route_rules_lookup except keys with no route_type are omitted"
  value       = { for k, v in data.oci_core_drg_route_table_route_rules.core_drg_route_table_route_rules_lookup : k => v.route_type if v.route_type != null && length(v.route_type) > 0 }
}

