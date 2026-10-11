variable "keys" {
  description = <<EOT
Map of keys, attributes below
Optional:
    - datacenter
    - namespace
    - partition
    - token
    - key (block):
        - default (optional)
        - delete (optional)
        - flags (optional)
        - name (optional)
        - path (required)
        - value (optional)
EOT

  type = map(object({
    datacenter = optional(string)
    namespace  = optional(string)
    partition  = optional(string)
    token      = optional(string)
    key = optional(list(object({
      default = optional(string)
      delete  = optional(bool)
      flags   = optional(number)
      name    = optional(string)
      path    = string
      value   = optional(string)
    })))
  }))
}

