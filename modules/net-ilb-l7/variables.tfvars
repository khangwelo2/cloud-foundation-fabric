address = "string" #required

description = "Terraform managed."

global_access = bool #required

group_configs = {}

labels = {}

name = "string" #required

neg_configs = {}

network_tier_premium = true

ports = list(string) #required

project_id = "string" #required

protocol = "HTTP"

region = "string" #required

service_directory_registration = object({
    namespace = string
    service   = string
  }) #required

ssl_certificates = {}

vpc_config = object({
    network    = string
    subnetwork = string
  }) #required