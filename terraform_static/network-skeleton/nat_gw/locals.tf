locals {
  env_prefix = "dev"
  prefixed_nat_gateway_name = "${local.env_prefix}-${var.nat_gateway_name}"
}