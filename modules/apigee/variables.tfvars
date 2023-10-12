endpoint_attachments = map(object({
    region             = string
    service_attachment = string
  })) #required

envgroups = map(list(string)) #required

environments = map(object({
    display_name    = optional(string)
    description     = optional(string, "Terraform-managed")
    deployment_type = optional(string)
    api_proxy_type  = optional(string)
    node_config = optional(object({
      min_node_count = optional(number)
      max_node_count = optional(number)
    }))
    iam       = optional(map(list(string)))
    envgroups = optional(list(string))
    regions   = optional(list(string))
  })) #required

instances = map(object({
    display_name                  = optional(string)
    description                   = optional(string, "Terraform-managed")
    runtime_ip_cidr_range         = string
    troubleshooting_ip_cidr_range = string
    disk_encryption_key           = optional(string)
    consumer_accept_list          = optional(list(string))
  })) #required

organization = object({
    display_name            = optional(string)
    description             = optional(string, "Terraform-managed")
    authorized_network      = optional(string)
    runtime_type            = optional(string, "CLOUD")
    billing_type            = optional(string)
    database_encryption_key = optional(string)
    analytics_region        = optional(string, "europe-west1")
  }) #required

project_id = "string" #required