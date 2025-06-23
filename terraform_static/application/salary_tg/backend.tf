terraform {
  backend "s3" {
    bucket         = "dev-otms-statefile"
    key            = "application/salary/target-group/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dev-otms-terraform-lock"
  }
}