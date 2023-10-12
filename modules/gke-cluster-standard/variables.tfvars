backup_configs = {}

cluster_autoscaling = object({
    auto_provisioning_defaults = optional(object({
      boot_disk_kms_key = optional(string)
      image_type        = optional(string)
      oauth_scopes      = optional(list(string))
      service_account   = optional(string)
    }))
    cpu_limits = optional(object({
      min = number
      max = number
    }))
    mem_limits = optional(object({
      min = number
      max = number
    }))
  }) #required

description = "string" #required

enable_addons = {
    horizontal_pod_autoscaling = true
    http_load_balancing        = true
  }

enable_features = {
    workload_identity = true
  }

issue_client_certificate = false

labels = map(string) #required

location = "string" #required

logging_config = ["SYSTEM_COMPONENTS"]

maintenance_config = {
    daily_window_start_time = "03:00"
    recurring_window        = null
    maintenance_exclusion   = []
  }

max_pods_per_node = 110

min_master_version = "string" #required

monitoring_config = {
    enable_components = ["SYSTEM_COMPONENTS"]
  }

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