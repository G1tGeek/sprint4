aws_region         = "us-east-2"
s3_bucket          = "dev-otms-statefile"
vpc_state_file     = "network-skeleton/vpc/terraform.tfstate"
subnet_state_file  = "network-skeleton/subnet/terraform.tfstate"
igw_state_file     = "network-skeleton/igw/terraform.tfstate"
nat_state_file     = "network-skeleton/nat/terraform.tfstate"


standard_tags = {
  Application = "OTMS"
  Owner       = "Prince"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
