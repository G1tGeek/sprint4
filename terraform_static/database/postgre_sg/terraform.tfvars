state_bucket   = "mygurukulam-p14-tfstate"
region   = "us-east-2"
vpc_state_key  = "env/dev/network-skeleton/vpc/terraform.tfstate"
attendance_state_key  = "env/dev/application/attendance/security-group/terraform.tfstate"
redis_state_key  = "env/dev/database/redis/security-group/terraform.tfstate"
security_group_name = "postgre-security-group"


openvpn_sg_id  = "sg-09d29c2b24d3f8e1b"
ssh_port       = 22
app_port       = 5432

egress_cidr = ["0.0.0.0/0"]

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
