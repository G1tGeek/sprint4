aws_region         = "us-east-2"
s3_bucket          = "mygurukulam-p14-tfstate"
vpc_state_file     = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_file  = "env/dev/network-skeleton/subnet/terraform.tfstate"
nat_gateway_name   = "nat"

standard_tags = {
  Application = "OTMS"
  Owner       = "Durgesh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
