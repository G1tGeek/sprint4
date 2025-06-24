region           = "us-east-2"
vpc_state_bucket = "mygurukulam-p14-tfstate"
vpc_state_key    = "env/dev/network-skeleton/vpc/terraform.tfstate"
igw_name = "igw"

standard_tags = {
  Application = "OTMS"
  Owner       = "Harsh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
