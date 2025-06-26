data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.vpc_state_key
    region = var.aws_region
  }
}

data "terraform_remote_state" "subnet" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.subnet_state_key
    region = var.aws_region
  }
}

data "terraform_remote_state" "security-group" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.sg_state_key
    region = var.aws_region
  }
}