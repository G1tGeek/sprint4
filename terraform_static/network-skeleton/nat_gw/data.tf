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
