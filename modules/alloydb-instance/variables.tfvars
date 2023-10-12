automated_backup_policy = object({
    location      = optional(string)
    backup_window = optional(string)
    enabled       = optional(bool)
    weekly_schedule = optional(object({
      days_of_week = optional(list(string))
      start_times  = list(string)
    })),
    quantity_based_retention_count = optional(number)
    time_based_retention_count     = optional(string)
    labels                         = optional(map(string))
    backup_encryption_key_name     = optional(string)
  }) #required

cluster_id =  "string" #required

display_name =  "string" #required

encryption_key_name =  "string" #required

initial_user = object({
    location      = optional(string)
    backup_window = optional(string)
    enabled       = optional(bool)
    weekly_schedule = optional(object({
      days_of_week = optional(list(string))
      start_times  = list(string)
    })),
    quantity_based_retention_count = optional(number)
    time_based_retention_count     = optional(string)
    labels                         = optional(map(string))
    backup_encryption_key_name     = optional(string)
  }) #required

labels = {}

location = "europe-west2"

network_name = "multiple-readpool"

network_self_link = "string" #required

primary_instance_config = object({
    location      = optional(string)
    backup_window = optional(string)
    enabled       = optional(bool)
    weekly_schedule = optional(object({
      days_of_week = optional(list(string))
      start_times  = list(string)
    })),
    quantity_based_retention_count = optional(number)
    time_based_retention_count     = optional(string)
    labels                         = optional(map(string))
    backup_encryption_key_name     = optional(string)
  }) #required
 
project_id = "string" #required

read_pool_instance = []