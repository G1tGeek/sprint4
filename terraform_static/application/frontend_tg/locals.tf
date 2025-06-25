locals {
  env_prefix = "dev"
  prefixed_tg_name = "${local.env_prefix}-${var.target_group_name}"
}