bigquery_subscription_configs = {}

dead_letter_configs = {}

defaults = {
    ack_deadline_seconds       = null
    message_retention_duration = null
    retain_acked_messages      = null
    expiration_policy_ttl      = null
    filter                     = null
  }

iam = {}

kms_key = "string" #required

labels = {}

message_retention_duration = "string" #required

name = "string" #required

project_id = "string" #required

push_configs = {}

regions = []

schema = object({
    definition   = string
    msg_encoding = optional(string, "ENCODING_UNSPECIFIED")
    schema_type  = string
  }) #required

subscription_iam = {}

subscriptions = {}