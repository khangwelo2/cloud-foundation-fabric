cors = object({
    origin          = optional(list(string))
    method          = optional(list(string))
    response_header = optional(list(string))
    max_age_seconds = optional(number)
  }) #required

encryption_key = "string" #required

force_destroy = false

iam = {}

labels = {}

lifecycle_rules = {}

location = "EU"

logging_config = object({
    log_bucket        = string
    log_object_prefix = optional(string)
  }) #required

name = "string" #required

notification_config = object({
    enabled            = bool
    payload_format     = string
    topic_name         = string
    sa_email           = string
    event_types        = optional(list(string))
    custom_attributes  = optional(map(string))
    object_name_prefix = optional(string)
  }) #required

prefix = "string" #required

project_id = "string" #required

retention_policy = object({
    retention_period = number
    is_locked        = optional(bool)
  }) #required

storage_class = "MULTI_REGIONAL"

uniform_bucket_level_access = true

versioning = false

website = object({
    main_page_suffix = optional(string)
    not_found_page   = optional(string)
  }) #required