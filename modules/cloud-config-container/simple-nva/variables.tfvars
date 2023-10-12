cloud_config = "string" #required

enable_health_checks = false

files = {}

frr_config = object({
    config_file     = string
    daemons_enabled = optional(list(string))
  }) #required

network_interfaces = list(object({
    routes              = optional(list(string))
    enable_masquerading = optional(bool, false)
    non_masq_cidrs      = optional(list(string))
  })) #required

open_ports = {
    tcp = []
    udp = []
  }

run_cmds = []