aws_region         = "us-east-2"
s3_bucket          = "mygurukulam-p14-tfstate"
vpc_state_file     = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_file  = "env/dev/network-skeleton/subnet/terraform.tfstate"
igw_state_file     = "env/dev/network-skeleton/igw/terraform.tfstate"
nat_state_file     = "env/dev/network-skeleton/nat/terraform.tfstate"
public_rt_name     = "public-rt"
private_rt_name    = "private-rt"


standard_tags = {
  Application = "OTMS"
  Owner       = "Prince"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
