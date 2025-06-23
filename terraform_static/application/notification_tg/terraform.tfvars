aws_region             = "us-east-2"
vpc_state_path         = "network-skeleton/vpc/terraform.tfstate"
instance_state_path    = "application/notification/instance/terraform.tfstate"
vpc_state_output_name  = "vpc_id"
instance_output_name   = "notification_instance_id"
target_group_name      = "dev-notification-tg"
port                   = 5000
protocol               = "HTTP"

standard_tags = {
  Application = "OTMS"
  Owner       = "Prince"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
