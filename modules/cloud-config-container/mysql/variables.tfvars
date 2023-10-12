cloud_config = "string" #required

config_variables = {}

image = "mysql:5.7"

kms_config = object({
    project_id = string
    keyring    = string
    location   = string
    key        = string
  }) #required

mysql_config = "string" #required

mysql_data_disk = "string" #required

mysql_password = "string"  #required