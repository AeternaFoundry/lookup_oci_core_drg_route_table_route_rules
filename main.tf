data "oci_core_drg_route_table_route_rules" "core_drg_route_table_route_rules_lookup" {
  for_each = var.core_drg_route_table_route_rules_lookup

  drg_route_table_id = each.value.drg_route_table_id
  route_type         = each.value.route_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

