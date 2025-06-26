aws_region          = "us-east-2"
remote_state_bucket = "mygurukulam-p14-tfstate"
vpc_state_key       = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_key    = "env/dev/network-skeleton/subnet/terraform.tfstate"
sg_state_key        = "env/dev/application/frontend/security-group/terraform.tfstate"
ami_id              = "ami-01b509ccd169b0892"

instance_name       = "frontend"
instance_type       = "t2.medium"
disk_size           = 8
key_name            = "dev-tf"

standard_tags = {
  Application = "OTMS"
  Owner       = "Nishkarsh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
