data "terraform_remote_state" "listener" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/application/frontend/listener/terraform.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "employee" {
  backend = "s3"
  config = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/application/employee/target-group/terraform.tfstate"
    region = "us-east-2"
  }
}
