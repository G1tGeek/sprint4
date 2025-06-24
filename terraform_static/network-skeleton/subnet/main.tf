resource "aws_subnet" "public" {
  for_each = {
    for subnet in local.public_subnets : subnet.name => subnet
  }

  vpc_id                  = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = merge(
    var.standard_tags,
    {
      Name = each.value.name
      Type = "public"
    }
  )
}

resource "aws_subnet" "private" {
  for_each = {
    for subnet in local.private_subnets : subnet.name => subnet
  }

  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az

  tags = merge(
    var.standard_tags,
    {
      Name = each.value.name
      Type = "private"
    }
  )
}
