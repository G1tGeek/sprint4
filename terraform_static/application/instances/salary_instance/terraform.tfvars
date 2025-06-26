aws_region          = "us-east-2"
remote_state_bucket = "mygurukulam-p14-tfstate"
vpc_state_key       = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_key    = "env/dev/network-skeleton/subnet/terraform.tfstate"
sg_state_key        = "env/dev/application/salary/security-group/terraform.tfstate"
instance_name       = "salary"
instance_type       = "t2.medium"
disk_size           = 8
key_name            = "dev-tf"
security_group_name = "salary-sg"

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
