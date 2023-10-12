default_rules_config = {}

egress_rules = {}

factories_config = object({
    cidr_tpl_file = optional(string)
    rules_folder  = string
  }) #required

ingress_rules = {}

named_ranges = {
    any            = ["0.0.0.0/0"]
    dns-forwarders = ["35.199.192.0/19"]
    health-checkers = [
      "35.191.0.0/16", "130.211.0.0/22", "209.85.152.0/22", "209.85.204.0/22"
    ]
    iap-forwarders        = ["35.235.240.0/20"]
    private-googleapis    = ["199.36.153.8/30"]
    restricted-googleapis = ["199.36.153.4/30"]
    rfc1918               = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
  }

network = "string" #required

project_id = "string" #required