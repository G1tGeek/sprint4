terraform {
  backend "s3" {
    bucket         = "dev-otms-statefile"
    key            = "database/postgre/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dev-otms-terraform-lock"
  }
}
