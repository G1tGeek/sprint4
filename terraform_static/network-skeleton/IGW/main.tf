data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.vpc_state_bucket
    key    = var.vpc_state_key
    region = var.region
  }
}

# Local tags with overridden Owner
locals {
  tags = merge(
    {
      Name  = var.igw_name
    },
    var.standard_tags
  )
}

resource "aws_internet_gateway" "dev_igw" {
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = local.tags
}
