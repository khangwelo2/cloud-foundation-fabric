admin_enabled = true

dedicated_interconnect_config = object({
    # Possible values @ https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_interconnect_attachment#bandwidth  
    bandwidth    = optional(string, "BPS_10G")
    bgp_range    = optional(string, "169.254.128.0/29")
    interconnect = string
    vlan_tag     = string
  }) #required

description = "string" #required

ipsec_gateway_ip_ranges = {}

mtu = "1500"

name = "string" #required

network = "string" #required

partner_interconnect_config = object({
    edge_availability_domain = optional(string, "AVAILABILITY_DOMAIN_ANY")
  }) #required

peer_asn = "string" #required

project_id = "string" #required

region = "string" #required

router_config = object({
    create    = optional(bool, true)
    asn       = optional(number, 65001)
    name      = optional(string, "router")
    keepalive = optional(number)
    custom_advertise = optional(object({
      all_subnets = bool
      ip_ranges   = map(string)
    }))
    bfd = optional(object({
      session_initialization_mode = optional(string, "ACTIVE")
      min_receive_interval        = optional(number)
      min_transmit_interval       = optional(number)
      multiplier                  = optional(number)
    }))
  }) #required

vlan_tag = number #required

vpn_gateways_ip_range = "string" #required