output "keys_id" {
  description = "Map of id values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.id }
}
output "keys_datacenter" {
  description = "Map of datacenter values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.datacenter }
}
output "keys_key" {
  description = "Map of key values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.key }
}
output "keys_namespace" {
  description = "Map of namespace values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.namespace }
}
output "keys_partition" {
  description = "Map of partition values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.partition }
}
output "keys_token" {
  description = "Map of token values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.token }
  sensitive   = true
}
output "keys_var" {
  description = "Map of var values across all keys, keyed the same as var.keys"
  value       = { for k, v in consul_keys.keys : k => v.var }
}

