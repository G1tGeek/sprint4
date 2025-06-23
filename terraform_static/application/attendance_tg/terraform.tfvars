aws_region             = "us-east-2"
vpc_state_path         = "network-skeleton/vpc/terraform.tfstate"
instance_state_path    = "application/attendance/instance/terraform.tfstate"
vpc_state_output_name  = "vpc_id"
instance_output_name   = "attendance_instance_id"
target_group_name      = "dev-attendance-tg"
port                   = 8080
protocol               = "HTTP"

standard_tags = {
  Application = "OTMS"
  Owner       = "Shivani"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
