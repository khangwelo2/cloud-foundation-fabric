contacts = {}

custom_roles = {}

firewall_policies = {}

firewall_policy_association = {}

firewall_policy_factory = object({
    cidr_file   = string
    policy_name = string
    rules_file  = string
  }) #required

group_iam = {}

iam = {}

iam_additive = {}

iam_additive_members = {}

iam_audit_config = {}

iam_audit_config_authoritative = map(map(list(string))) #required

iam_bindings_authoritative = map(list(string)) #required

logging_exclusions = {}

logging_sinks = {}

network_tags = {}

org_policies = {}

org_policies_data_path = "string" #required

org_policy_custom_constraints = {}

org_policy_custom_constraints_data_path = "string" #required

organization_id = "string" #required

tag_bindings = map(string)  #required

tags = {}

