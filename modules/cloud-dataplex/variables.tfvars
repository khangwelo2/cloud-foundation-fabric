location_type = "SINGLE_REGION"

name = "string" #required

prefix = "string" #required

project_id = "string" #required

region = "string" #required

zones = map(object({
    type      = string
    discovery = optional(bool, true)
    assets = map(object({
      bucket_name            = string
      cron_schedule          = optional(string, "15 15 * * *")
      discovery_spec_enabled = optional(bool, true)
      resource_spec_type     = optional(string, "STORAGE_BUCKET")
    }))
  })) #required