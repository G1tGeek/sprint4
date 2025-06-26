aws_region          = "us-east-2"
remote_state_bucket = "mygurukulam-p14-tfstate"
vpc_state_key       = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_key    = "env/dev/network-skeleton/subnet/terraform.tfstate"

instance_name       = "employee"
instance_type       = "t2.medium"
disk_size           = 8
key_name            = "dev-tf"
sg_state_key        = "env/dev/application/employee/security-group/terraform.tfstate"
ami_id              = "ami-033d475a30f38fb72"

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
