data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.state_bucket
    key    = var.vpc_state_key
    region = var.region
  }
}

data "terraform_remote_state" "attendance" {
  backend = "s3"
  config = {
    bucket = var.state_bucket
    key    = var.attendance_state_key
    region = var.region
  }
}

data "terraform_remote_state" "redis" {
  backend = "s3"
  config = {
    bucket = var.state_bucket
    key    = var.redis_state_key
    region = var.region
  }
}

