aws_region          = "us-east-2"
remote_state_bucket = "mygurukulam-p14-tfstate"
vpc_state_key       = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_key    = "env/dev/network-skeleton/subnet/terraform.tfstate"
sg_state_key        = "env/dev/database/redis/security-group/terraform.tfstate"

instance_name       = "redis"
instance_type       = "t2.medium"
disk_size           = 20
key_name            = "dev-tf"


standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
