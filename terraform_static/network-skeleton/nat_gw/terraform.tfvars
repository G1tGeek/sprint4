aws_region         = "us-east-2"
s3_bucket          = "dev-otms-statefile"
vpc_state_file     = "network-skeleton/vpc/terraform.tfstate"
subnet_state_file  = "network-skeleton/subnet/terraform.tfstate"
nat_gateway_name   = "dev-nat"

standard_tags = {
  Application = "OTMS"
  Owner       = "Durgesh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
