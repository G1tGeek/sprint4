aws_region             = "us-east-2"
vpc_state_path         = "network-skeleton/vpc/terraform.tfstate"
instance_state_path    = "application/employee/instance/terraform.tfstate"
vpc_state_output_name  = "vpc_id"
instance_output_name   = "employee_instance_id"
target_group_name      = "dev-employee-tg"
port                   = 8080
protocol               = "HTTP"

standard_tags = {
  Application = "OTMS"
  Owner       = "Durgesh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
