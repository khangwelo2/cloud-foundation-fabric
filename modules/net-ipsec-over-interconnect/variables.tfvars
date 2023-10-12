interconnect_attachments = object({
    a = string
    b = string
  }) #required

name = "string" #required

network = "string" #required

peer_gateway_config = object({
    create          = optional(bool, false)
    description     = optional(string, "Terraform managed IPSec over Interconnect VPN gateway")
    name            = optional(string, null)
    id              = optional(string, null)
    redundancy_type = optional(string)
    interfaces      = optional(list(string))
  }) #required

project_id = "string" #required

region = "string" #required

router_config = object({
    create    = optional(bool, true)
    asn       = optional(number)
    name      = optional(string)
    keepalive = optional(number)
    custom_advertise = optional(object({
      all_subnets = bool
      ip_ranges   = map(string)
    }))
  }) #required

tunnels = {}

