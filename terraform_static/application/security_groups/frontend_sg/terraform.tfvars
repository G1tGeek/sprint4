state_bucket   = "mygurukulam-p14-tfstate"
region   = "us-east-2"
vpc_state_key  = "env/dev/network-skeleton/vpc/terraform.tfstate"
alb_state_key  = "env/dev/network-skeleton/load-balancer/terraform.tfstate"
security_group_name = "frontend-security-group"


openvpn_sg_id  = "sg-09d29c2b24d3f8e1b"
ssh_port       = 22
https_port     = 443
app_port       = 3000

egress_cidr = ["0.0.0.0/0"]

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
