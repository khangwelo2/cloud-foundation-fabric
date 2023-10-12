address = "string" #required

backend_service_config = {}

backends = []

description = "Terraform managed."

group_configs = {}

health_check = "string" #required

health_check_config = {
    tcp = {
      port_specification = "USE_SERVING_PORT"
    }
  }

labels = {}

name = "string" #required

ports = list(string) #required

project_id = "string" #required

protocol = "TCP"

region = "string" #required