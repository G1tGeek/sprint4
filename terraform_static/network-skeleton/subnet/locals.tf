locals {
  prefix = "dev"

  public_subnets = [
    for subnet in var.public_subnets : merge(
      subnet,
      {
        name = "${local.prefix}-${replace(subnet.name, "^dev-", "")}"
      }
    )
  ]

  private_subnets = [
    for subnet in var.private_subnets : merge(
      subnet,
      {
        name = "${local.prefix}-${replace(subnet.name, "^dev-", "")}"
      }
    )
  ]
}
