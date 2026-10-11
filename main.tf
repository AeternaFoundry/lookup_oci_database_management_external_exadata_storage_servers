data "oci_database_management_external_exadata_storage_servers" "database_management_external_exadata_storage_servers_lookup" {
  for_each = var.database_management_external_exadata_storage_servers_lookup

  compartment_id                     = each.value.compartment_id
  external_exadata_infrastructure_id = each.value.external_exadata_infrastructure_id
  display_name                       = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

