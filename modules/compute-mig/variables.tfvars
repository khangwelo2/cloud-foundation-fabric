all_instances_config = object({
    labels   = optional(map(string))
    metadata = optional(map(string))
  }) #required

auto_healing_policies = object({
    health_check      = optional(string)
    initial_delay_sec = number
  }) #required

autoscaler_config = object({
    max_replicas    = number
    min_replicas    = number
    cooldown_period = optional(number)
    mode            = optional(string) # OFF, ONLY_UP, ON
    scaling_control = optional(object({
      down = optional(object({
        max_replicas_fixed   = optional(number)
        max_replicas_percent = optional(number)
        time_window_sec      = optional(number)
      }))
      in = optional(object({
        max_replicas_fixed   = optional(number)
        max_replicas_percent = optional(number)
        time_window_sec      = optional(number)
      }))
    }), {})
    scaling_signals = optional(object({
      cpu_utilization = optional(object({
        target                = number
        optimize_availability = optional(bool)
      }))
      load_balancing_utilization = optional(object({
        target = number
      }))
      metrics = optional(list(object({
        name                       = string
        type                       = string # GAUGE, DELTA_PER_SECOND, DELTA_PER_MINUTE
        target_value               = number
        single_instance_assignment = optional(number)
        time_series_filter         = optional(string)
      })))
      schedules = optional(list(object({
        duration_sec          = number
        name                  = string
        min_required_replicas = number
        cron_schedule         = string
        description           = optional(bool)
        timezone              = optional(string)
        disabled              = optional(bool)
      })))
    }), {})
  }) #required

default_version_name = "default"

description = "Terraform managed."

distribution_policy = object({
    target_shape = optional(string)
    zones        = optional(list(string))
  }) #required

health_check_config = object({
    check_interval_sec  = optional(number)
    description         = optional(string, "Terraform managed.")
    enable_logging      = optional(bool, false)
    healthy_threshold   = optional(number)
    timeout_sec         = optional(number)
    unhealthy_threshold = optional(number)
    grpc = optional(object({
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string) # USE_FIXED_PORT USE_NAMED_PORT USE_SERVING_PORT
      service_name       = optional(string)
    }))
    http = optional(object({
      host               = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string) # USE_FIXED_PORT USE_NAMED_PORT USE_SERVING_PORT
      proxy_header       = optional(string)
      request_path       = optional(string)
      response           = optional(string)
    }))
    http2 = optional(object({
      host               = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string) # USE_FIXED_PORT USE_NAMED_PORT USE_SERVING_PORT
      proxy_header       = optional(string)
      request_path       = optional(string)
      response           = optional(string)
    }))
    https = optional(object({
      host               = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string) # USE_FIXED_PORT USE_NAMED_PORT USE_SERVING_PORT
      proxy_header       = optional(string)
      request_path       = optional(string)
      response           = optional(string)
    }))
    tcp = optional(object({
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string) # USE_FIXED_PORT USE_NAMED_PORT USE_SERVING_PORT
      proxy_header       = optional(string)
      request            = optional(string)
      response           = optional(string)
    }))
    ssl = optional(object({
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string) # USE_FIXED_PORT USE_NAMED_PORT USE_SERVING_PORT
      proxy_header       = optional(string)
      request            = optional(string)
      response           = optional(string)
    }))
  }) #required

instance_template = "string" #required

location = "string" #required

name = "string" #required

named_ports = map(number) #required

project_id = "string" #required

stateful_config = {}

stateful_disks = {}

target_pools = []

target_size = number #required

update_policy = object({
    minimal_action = string
    type           = string
    max_surge = optional(object({
      fixed   = optional(number)
      percent = optional(number)
    }))
    max_unavailable = optional(object({
      fixed   = optional(number)
      percent = optional(number)
    }))
    min_ready_sec                = optional(number)
    most_disruptive_action       = optional(string)
    regional_redistribution_type = optional(string)
    replacement_method           = optional(string)
  }) #required

versions = {}

wait_for_instances = object({
    enabled = bool
    status  = optional(string)
  }) #required