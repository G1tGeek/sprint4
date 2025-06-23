region           = "us-east-2"
vpc_state_bucket = "dev-otms-statefile"
vpc_state_key    = "network-skeleton/vpc/terraform.tfstate"
igw_name = "dev-igw"

standard_tags = {
  Application = "OTMS"
  Owner       = "Harsh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
