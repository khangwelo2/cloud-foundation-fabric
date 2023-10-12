clusters = map(object({
    zone         = optional(string)
    storage_type = optional(string)
    num_nodes    = optional(number)
    autoscaling = optional(object({
      min_nodes      = number
      max_nodes      = number
      cpu_target     = number
      storage_target = optional(number)
    }))
  })) #required

default_autoscaling = object({
    min_nodes      = number
    max_nodes      = number
    cpu_target     = number
    storage_target = optional(number)
  }) #required

default_gc_policy = object({
    deletion_policy = optional(string)
    gc_rules        = optional(string)
    mode            = optional(string)
    max_age         = optional(string)
    max_version     = optional(string)
  }) #required

deletion_protection = true

display_name = "string" #required

iam = {}

instance_type = "string" #required

name = "string" #required

project_id = "string" #required

tables = {}