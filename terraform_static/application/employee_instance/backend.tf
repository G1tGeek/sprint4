terraform {
  backend "s3" {
    bucket         = "dev-otms-statefile"
    key            = "application/employee/instance/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dev-otms-terraform-lock"
  }
}
