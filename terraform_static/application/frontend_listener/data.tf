data "terraform_remote_state" "alb" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/network-skeleton/load-balancer/terraform.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "frontend" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/application/frontend/target-group/terraform.tfstate"
    region = "us-east-2"
  }
}
