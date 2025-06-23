aws_region             = "us-east-2"
vpc_state_path         = "network-skeleton/vpc/terraform.tfstate"
instance_state_path    = "application/frontend/instance/terraform.tfstate"
vpc_state_output_name  = "vpc_id"
instance_output_name   = "frontend_instance_id"
target_group_name      = "dev-frontend-tg"
port                   = 3000
protocol               = "HTTP"

standard_tags = {
  Application = "OTMS"
  Owner       = "Nishkarsh"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
