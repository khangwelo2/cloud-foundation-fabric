bucket_config = object({
    location                  = optional(string)
    lifecycle_delete_age_days = optional(number)
  }) #required

bucket_name = "string" #required

build_worker_pool = "string" #required

bundle_config = object({
    source_dir  = string
    output_path = optional(string)
    excludes    = optional(list(string))
  }) #required

description = "Terraform managed."

environment_variables = {}

function_config = {
    entry_point     = "main"
    instance_count  = 1
    memory_mb       = 256
    cpu             = "0.166"
    runtime         = "python310"
    timeout_seconds = 180
  }

iam = {}

ingress_settings = "string" #required

labels = {}

name = "string" #required

prefix = "string" #required

project_id = "string" #required

region = "europe-west1"

secrets = {}

service_account = "string" #required

service_account_create = false

trigger_config = object({
    event_type   = string
    pubsub_topic = optional(string)
    region       = optional(string)
    event_filters = optional(list(object({
      attribute = string
      value     = string
      operator  = string
    })), [])
    service_account_email  = optional(string)
    service_account_create = optional(bool, false)
    retry_policy           = optional(string)
  }) #required

vpc_connector = object({
    create          = bool
    name            = string
    egress_settings = string
  }) #required

vpc_connector_config = object({
    ip_cidr_range = string
    network       = string
  }) #required