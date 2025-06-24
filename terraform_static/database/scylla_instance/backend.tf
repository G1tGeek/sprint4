terraform {
  backend "s3" {
    bucket         = "mygurukulam-p14-tfstate"
    key            = "env/dev/database/scylla/instance/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "mygurukulam-p14-tf-statelock"
  }
}
