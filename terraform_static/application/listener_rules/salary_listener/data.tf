data "terraform_remote_state" "listener" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/application/frontend/listener/terraform.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "salary" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/application/salary/target-group/terraform.tfstate"
    region = "us-east-2"
  }
}
