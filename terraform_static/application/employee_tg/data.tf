data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = var.vpc_state_path
    region = var.aws_region
  }
}

data "terraform_remote_state" "employee_instance" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = var.instance_state_path
    region = var.aws_region
  }
}

