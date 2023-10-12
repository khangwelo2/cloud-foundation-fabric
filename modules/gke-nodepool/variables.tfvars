cluster_id = "string" #required

cluster_name = "string" #required

gke_version = "string" #required

labels = {}

location = "string" #required

max_pods_per_node = number #required

name = "string" #required

node_config = {
    disk_type = "pd-balanced"
  }

node_count = {
    initial = 1
  }

node_locations = list(string) #required

nodepool_config = object({
    autoscaling = optional(object({
      location_policy = optional(string)
      max_node_count  = optional(number)
      min_node_count  = optional(number)
      use_total_nodes = optional(bool, false)
    }))
    management = optional(object({
      auto_repair  = optional(bool)
      auto_upgrade = optional(bool)
    }))
    # placement_policy = optional(bool)
    upgrade_settings = optional(object({
      max_surge       = number
      max_unavailable = number
    }))
  }) #required

pod_range = object({
    secondary_pod_range = object({
      cidr   = optional(string)
      create = optional(bool)
      name   = string
    })
  }) #required

project_id = "string" #required

reservation_affinity = object({
    consume_reservation_type = string
    key                      = optional(string)
    values                   = optional(list(string))
  }) #required

service_account = {}

sole_tenant_nodegroup = "string" #required

tags = list(string) #required

taints = list(object({
    key    = string
    value  = string
    effect = string
  })) #required