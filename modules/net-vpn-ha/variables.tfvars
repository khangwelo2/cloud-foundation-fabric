name = "string" #required

network = "string" #required

peer_gateways = {}

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

vpn_gateway = "string" #required

vpn_gateway_create = true