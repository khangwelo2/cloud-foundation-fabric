config_variables = {}

coredns_config = "string" #required

local_ip_cidr_range = "192.168.192.0/24"

vpn_config = -object({
    peer_ip        = string
    shared_secret  = string
    type           = optional(string, "static")
    peer_ip2       = optional(string)
    shared_secret2 = optional(string)
  }) #required

vpn_dynamic_config = {
    local_bgp_asn      = 64514
    local_bgp_address  = "169.254.1.2"
    peer_bgp_asn       = 64513
    peer_bgp_address   = "169.254.1.1"
    local_bgp_asn2     = 64514
    local_bgp_address2 = "169.254.2.2"
    peer_bgp_asn2      = 64520
    peer_bgp_address2  = "169.254.2.1"
  }

vpn_static_ranges = ["10.0.0.0/8"]