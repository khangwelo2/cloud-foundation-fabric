admission_whitelist_patterns = list(string) #required

attestors_config = map(object({
    note_reference  = string
    iam             = map(list(string))
    pgp_public_keys = list(string)
    pkix_public_keys = list(object({
      id                  = string
      public_key_pem      = string
      signature_algorithm = string
    }))
  })) #required

cluster_admission_rules = map(object({
    evaluation_mode  = string
    enforcement_mode = string
    attestors        = list(string)
  })) #required

default_admission_rule = {
    evaluation_mode  = "ALWAYS_ALLOW"
    enforcement_mode = "ENFORCED_BLOCK_AND_AUDIT_LOG"
    attestors        = null
  }

global_policy_evaluation_mode = "string" #required

project_id = "string" #required