contacts = {}

firewall_policies = {}

firewall_policy_association = {}

firewall_policy_factory = object({
    cidr_file   = string
    policy_name = string
    rules_file  = string
  }) #required

folder_create = true

group_iam = {}

iam = {}

iam_additive = {}

iam_additive_members = {}

id = "string" #required

logging_exclusions = {}

logging_sinks = {}

name = "string" #required

org_policies = {}

org_policies_data_path = "string" #required

parent = "string" #required

tag_bindings = map(string) #required