data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.state_bucket
    key    = var.vpc_state_key
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

data "terraform_remote_state" "employee" {
  backend = "s3"
  config = {
    bucket = var.state_bucket
    key    = var.employee_state_key
    region = var.region
  }
}

data "terraform_remote_state" "salary" {
  backend = "s3"
  config = {
    bucket = var.state_bucket
    key    = var.salary_state_key
    region = var.region
  }
}