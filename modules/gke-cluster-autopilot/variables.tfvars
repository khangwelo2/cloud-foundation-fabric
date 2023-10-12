backup_configs = {}

description = "string" #required

enable_addons = {
    horizontal_pod_autoscaling = true
    http_load_balancing        = true
  }

enable_features = {

  }

issue_client_certificate = false

labels = map(string) #required

location = "string" #required

maintenance_config = {
    daily_window_start_time = "03:00"
    recurring_window        = null
    maintenance_exclusion   = []
  }

min_master_version = "string" #required

name = "string" #required

node_locations = []

private_cluster_config = object({
    enable_private_endpoint = optional(bool)
    master_global_access    = optional(bool)
    peering_config = optional(object({
      export_routes = optional(bool)
      import_routes = optional(bool)
      project_id    = optional(string)
    }))
  }) #required

project_id = "string" #required

release_channel = "string" #required

service_account = "string" #required

tags = list(string) #required

vpc_config = object({
    network                = string
    subnetwork             = string
    master_ipv4_cidr_block = optional(string)
    secondary_range_blocks = optional(object({
      pods     = string
      services = string
    }))
    secondary_range_names = optional(object({
      pods     = string
      services = string
    }), { pods = "pods", services = "services" })
    master_authorized_ranges = optional(map(string))
    stack_type               = optional(string)
  }) #required

