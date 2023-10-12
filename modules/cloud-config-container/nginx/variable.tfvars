cloud_config = "string" #required

config_variables = {}

file_defaults = {
    owner       = "root"
    permissions = "0644"
  }

files = {}

image = "nginxdemos/hello:plain-text"

nginx_config = "string" #required

runcmd_post = []

users = [
  ]