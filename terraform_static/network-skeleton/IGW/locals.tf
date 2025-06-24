locals {
  env_prefix = "dev"
  prefixed_igw_name = "${local.env_prefix}-${var.igw_name}"
}