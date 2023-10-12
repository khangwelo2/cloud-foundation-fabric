gateway_address = "string" #required

gateway_address_create = true

name = "string" #required

network = "string" #required

project_id = "string" #required

region = "string" #required

router_config = object({
    create    = optional(bool, true)
    asn       = number
    name      = optional(string)
    keepalive = optional(number)
    custom_advertise = optional(object({
      all_subnets = bool
      ip_ranges   = map(string)
    }))
  }) #required

tunnels = {}