locals {
  env_prefix = "dev"
  prefixed_instance_name = "${local.env_prefix}-${var.instance_name}"
}