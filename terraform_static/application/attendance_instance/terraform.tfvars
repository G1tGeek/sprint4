aws_region          = "us-east-2"
remote_state_bucket = "mygurukulam-p14-tfstate"
vpc_state_key       = "env/dev/network-skeleton/vpc/terraform.tfstate"
subnet_state_key    = "env/dev/network-skeleton/subnet/terraform.tfstate"

instance_name       = "attendance"
instance_type       = "t2.medium"
disk_size           = 8
key_name            = "dev-tf"
security_group_name = "attendance-sg"

sg_ingress_from_port = 0
sg_ingress_to_port   = 0
sg_ingress_protocol  = "-1"
sg_ingress_cidr      = "0.0.0.0/0"

sg_egress_from_port = 0
sg_egress_to_port   = 0
sg_egress_protocol  = "-1"
sg_egress_cidr      = "0.0.0.0/0"

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
