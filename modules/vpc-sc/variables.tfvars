access_levels = {}

access_policy = string #required

access_policy_create = object({
    parent = string
    title  = string
    scopes = optional(list(string), null)
  }) #required

egress_policies = {}

ingress_policies = {}

service_perimeters_bridge = {}

service_perimeters_regular = {}

