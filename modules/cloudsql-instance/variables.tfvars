allocated_ip_ranges = {}

authorized_networks = map(string) #required

availability_type = "ZONAL"

backup_configuration = {
    enabled                        = false
    binary_log_enabled             = false
    start_time                     = "23:00"
    location                       = null
    log_retention_days             = 7
    point_in_time_recovery_enabled = null
    retention_count                = 7
  }

database_version = "string" #required

databases = list(string) #required

deletion_protection = false

disk_size = number #required

disk_type = "PD_SSD"

encryption_key_name = "string" #required

flags = map(string) #required

ipv4_enabled = false

labels = map(string) #required

name = "string" #required

network = "string" #required

postgres_client_certificates = list(string) #required

prefix = "string" #required

project_id = "string" #required

region = "string" #required

replicas = {}

root_password = "string" #required

tier = "string" #required

users = map(string) #required