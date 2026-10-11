output "keys_id" {
  description = "Map of id values across all keys, keyed the same as var.keys except keys with no id are omitted"
  value       = { for k, v in consul_keys.keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "keys_datacenter" {
  description = "Map of datacenter values across all keys, keyed the same as var.keys except keys with no datacenter are omitted"
  value       = { for k, v in consul_keys.keys : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "keys_key" {
  description = "Map of key values across all keys, keyed the same as var.keys except keys with no key are omitted"
  value       = { for k, v in consul_keys.keys : k => v.key if v.key != null && length(v.key) > 0 }
}
output "keys_namespace" {
  description = "Map of namespace values across all keys, keyed the same as var.keys except keys with no namespace are omitted"
  value       = { for k, v in consul_keys.keys : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "keys_partition" {
  description = "Map of partition values across all keys, keyed the same as var.keys except keys with no partition are omitted"
  value       = { for k, v in consul_keys.keys : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "keys_token" {
  description = "Map of token values across all keys, keyed the same as var.keys except keys with no token are omitted"
  value       = { for k, v in consul_keys.keys : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "keys_var" {
  description = "Map of var values across all keys, keyed the same as var.keys except keys with no var are omitted"
  value       = { for k, v in consul_keys.keys : k => v.var if v.var != null && length(v.var) > 0 }
}

