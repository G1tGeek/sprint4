aws_region             = "us-east-2"
vpc_state_path         = "env/dev/network-skeleton/vpc/terraform.tfstate"
instance_state_path    = "env/dev/application/notification/instance/terraform.tfstate"
vpc_state_output_name  = "vpc_id"
instance_output_name   = "notification_instance_id"
target_group_name      = "notification-tg"
port                   = 5000
protocol               = "HTTP"

standard_tags = {
  Application = "OTMS"
  Owner       = "Shivani"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
