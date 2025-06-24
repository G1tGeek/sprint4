locals {
  env_prefix = "dev"
  prefixed_public_rt_name = "${local.env_prefix}-${var.public_rt_name}"
  prefixed_private_rt_name = "${local.env_prefix}-${var.private_rt_name}"
}