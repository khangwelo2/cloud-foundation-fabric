addresses = "string" #required

certificates = list(string) #required

delete_swg_autogen_router_on_destroy = true

labels = {}

name = "string" #required

network = "string" #required

policy_rules = {}

ports = [443]

project_id = "string" #required

region = "string" #required

scope = "string" #required

subnetwork = "string" #required

tls_inspection_config = object({
    ca_pool               = string
    exclude_public_ca_set = optional(bool, false)
  }) #required