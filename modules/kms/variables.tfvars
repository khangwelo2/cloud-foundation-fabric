iam = {}

iam_additive = {}

key_iam = {}

key_iam_additive = {}

key_purpose = {}

key_purpose_defaults = {
    purpose          = null
    version_template = null
  }

keyring = object({
    location = string
    name     = string
  }) #required

keyring_create = true

keys = {}

project_id = "string" #required

tag_bindings = map(string) #required