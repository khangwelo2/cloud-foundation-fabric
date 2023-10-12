attached_disk_defaults = {
    auto_delete  = true
    mode         = "READ_WRITE"
    replica_zone = null
    type         = "pd-balanced"
  }

attached_disks = []

boot_disk = {
    initialize_params = {}
  }

can_ip_forward = bool = false

confidential_compute = bool = false

create_template = bool = false

description = "Managed by the compute-vm Terraform module."

enable_display = bool = false

encryption = object({
    encrypt_boot            = optional(bool, false)
    disk_encryption_key_raw = optional(string)
    kms_key_self_link       = optional(string)
  }) #required

group = object({
    named_ports = map(number)
  }) #required

hostname = "string" #required

iam = {}

instance_type = "f1-micro"

labels = {}

metadata = {}

min_cpu_platform = "string" #required

name = "string" #required

network_interfaces = list(object({
    nat        = optional(bool, false)
    network    = string
    subnetwork = string
    addresses = optional(object({
      internal = optional(string)
      external = optional(string)
    }), null)
    alias_ips = optional(map(string), {})
    nic_type  = optional(string)
  })) #required

options = {
    allow_stopping_for_update = true
    deletion_protection       = false
    spot                      = false
    termination_action        = null
  }

project_id = "string" #required

scratch_disks = {
    count     = 0
    interface = "NVME"
  }

service_account = "string" #required

service_account_create = false

service_account_scopes = {
    count     = 0
    interface = "NVME"
  }

shielded_config = object({
    enable_secure_boot          = bool
    enable_vtpm                 = bool
    enable_integrity_monitoring = bool
  }) #required

tag_bindings = map(string) #required

tags = []

zone = "string" #required