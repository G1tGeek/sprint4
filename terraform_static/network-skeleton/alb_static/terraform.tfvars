aws_region           = "us-east-2"
alb_name             = "alb"
security_group_name  = "alb-sg"

standard_tags = {
  Application = "OTMS"
  Owner       = "Nishkarsh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}

alb_sg_ingress_rules = [
  { from_port = 80, to_port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] },
  { from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }
]

alb_sg_egress_rules = [
  { from_port = 0, to_port = 0, protocol = "-1", cidr_blocks = ["0.0.0.0/0"] }
]

remote_states = {
  vpc = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/network-skeleton/vpc/terraform.tfstate"
    region = "us-east-2"
  }
  subnet = {
    bucket = "mygurukulam-p14-tfstate"
    key    = "env/dev/network-skeleton/subnet/terraform.tfstate"
    region = "us-east-2"
  }
}
