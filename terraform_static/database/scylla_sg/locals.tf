locals {
  env_prefix                   = "dev"
  prefixed_security_group_name = "dev-${var.security_group_name}"
}