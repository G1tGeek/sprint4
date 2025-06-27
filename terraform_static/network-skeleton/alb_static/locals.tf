locals {
  env_prefix = "dev"
  prefixed_alb_name = "dev-${var.alb_name}"
  prefixed_security_group_name = "dev-${var.security_group_name}"
}