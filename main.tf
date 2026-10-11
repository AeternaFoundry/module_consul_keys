resource "consul_keys" "keys" {
  for_each = var.keys

  datacenter = each.value.datacenter
  namespace  = each.value.namespace
  partition  = each.value.partition
  token      = each.value.token

  dynamic "key" {
    for_each = each.value.key != null ? each.value.key : []
    content {
      default = key.value.default
      delete  = key.value.delete
      flags   = key.value.flags
      name    = key.value.name
      path    = key.value.path
      value   = key.value.value
    }
  }
}

