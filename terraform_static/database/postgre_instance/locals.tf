locals {
  env_prefix                   = "dev"
  prefixed_instance_name       = "dev-${var.instance_name}"
  prefixed_security_group_name = "dev-${var.security_group_name}"
}