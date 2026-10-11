variable "database_management_external_exadata_storage_servers_lookup" {
  description = <<EOT
Map of database_management_external_exadata_storage_servers_lookup, attributes below
Required:
    - compartment_id
    - external_exadata_infrastructure_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                     = string
    external_exadata_infrastructure_id = string
    display_name                       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

