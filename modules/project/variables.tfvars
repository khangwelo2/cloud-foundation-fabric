auto_create_network = false

billing_account = "string" #required

contacts = {}

custom_roles = {}

default_service_account = "keep"

descriptive_name = "string" #required

group_iam = {}

iam = {}

iam_additive = {}

iam_additive_members = {}

labels = {}

lien_reason = ""

logging_exclusions = {}

logging_sinks = {}

metric_scopes = []

name = "string" #required

org_policies = {}

org_policies_data_path = "string" #required

oslogin = false

oslogin_admins = []

oslogin_users = []

parent = "string" #required

prefix = "string" #required

project_create = true

service_config = {
    disable_on_destroy         = false
    disable_dependent_services = false
  }

service_encryption_key_ids = {}

service_perimeter_bridges = list(string) #required

service_perimeter_standard = "string" #required

services = []

shared_vpc_host_config = object({
    enabled          = bool
    service_projects = optional(list(string), [])
  }) #required

shared_vpc_service_config = object({
    host_project         = string
    service_identity_iam = optional(map(list(string)))
  }) #required

skip_delete = false

tag_bindings = map(string) #required