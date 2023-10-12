data_transfer = false

hub = object({
    create      = optional(bool, false)
    description = optional(string)
    name        = string
  }) #required

name = "string" #required

project_id = "string" #required

region = "string" #required

router_appliances = list(object({
    internal_ip  = string
    vm_self_link = string
  })) #required

router_config = object({
    asn = number
    custom_advertise = optional(object({
      all_subnets = bool
      ip_ranges   = map(string)
    }))
    ip_interface0   = string
    ip_interface1   = string
    keepalive       = optional(number)
    peer_asn        = number
    routes_priority = optional(number, 100)
  }) #required

vpc_config = object({
    network_name     = string
    subnet_self_link = string
  }) #required