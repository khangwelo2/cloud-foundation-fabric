auto_create_subnetworks = false

create_googleapis_routes = {}

data_folder = "string" #required

delete_default_routes_on_create = false

description = "Terraform-managed."

dns_policy = object({
    inbound = optional(bool)
    logging = optional(bool)
    outbound = optional(object({
      private_ns = list(string)
      public_ns  = list(string)
    }))
  }) #required

firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"

mtu = number #required

name = "string" #required

peering_config = object({
    peer_vpc_self_link = string
    create_remote_peer = optional(bool, true)
    export_routes      = optional(bool)
    import_routes      = optional(bool)
  }) #required

project_id = "string" #required

psa_config = object({
    ranges        = map(string)
    export_routes = optional(bool, false)
    import_routes = optional(bool, false)
  }) #required

routes = {}

routing_mode = "GLOBAL"

shared_vpc_host = false

shared_vpc_service_projects = []

subnet_iam = {}

subnet_iam_additive = {}

subnets = []

subnets_proxy_only = []

subnets_psc = []

vpc_create = true