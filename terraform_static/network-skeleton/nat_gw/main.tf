# Remote State Data Sources
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = var.s3_bucket
    key    = var.vpc_state_file
    region = var.aws_region
  }
}

data "terraform_remote_state" "subnet" {
  backend = "s3"

  config = {
    bucket = var.s3_bucket
    key    = var.subnet_state_file
    region = var.aws_region
  }
}

# Elastic IP for the NAT Gateway
resource "aws_eip" "nat_eip" {
  tags = merge(
    var.standard_tags,
    {
      Name = "${var.nat_gateway_name}-eip"
    }
  )
}

# NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = data.terraform_remote_state.subnet.outputs.dev_public_subnet_1_id
  tags = merge(
    var.standard_tags,
    {
      Name = var.nat_gateway_name
    }
  )
}
