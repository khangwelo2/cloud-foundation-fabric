client_networks = []

description = "Terraform managed."

dnssec_config = {
    state = "off"
  }

domain = "string" #required

enable_logging = false

forwarders = {}

iam = map(list(string)) #required

name = "string" #required

peer_network = "string" #required

project_id = "string" #required

recordsets = {}

service_directory_namespace = "string" #required

type = "private"

zone_create = true