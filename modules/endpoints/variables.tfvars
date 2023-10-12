grpc_config = object({
    yaml_path          = string
    protoc_output_path = string
  }) #required

iam = {}

openapi_config = object({
    yaml_path = string
  }) #required

project_id = "string" #required

service_name = "string" #required