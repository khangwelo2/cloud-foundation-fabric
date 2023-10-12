container_concurrency = "string" #required

containers = {}

eventarc_triggers = {}

iam = {}

ingress_settings = "string" #required

labels = {}

name = "string" #required

prefix = "string" #required

project_id = "string" #required

region = "europe-west1"

revision_annotations = {}

revision_name = "string" #required

service_account = "string" #required

service_account_create = false

timeout_seconds = number #required

traffic = {}

volumes = {}

vpc_connector_create = object({
    ip_cidr_range = optional(string)
    vpc_self_link = optional(string)
    machine_type  = optional(string)
    name          = optional(string)
    instances = optional(object({
      max = optional(number)
      min = optional(number)
    }), {})
    throughput = optional(object({
      max = optional(number)
      min = optional(number)
    }), {})
    subnet = optional(object({
      name       = optional(string)
      project_id = optional(string)
    }), {})
  }) #required