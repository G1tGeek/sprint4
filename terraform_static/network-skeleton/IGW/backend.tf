terraform {
  backend "s3" {
    bucket         = "dev-otms-statefile"
    key            = "network-skeleton/igw/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dev-otms-terraform-lock"
    encrypt        = true
  }
}
