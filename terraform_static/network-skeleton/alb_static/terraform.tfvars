aws_region     = "us-east-2"
alb_name       = "dev-alb"
certificate_arn = "arn:aws:acm:us-east-2:553653219591:certificate/9147c3c4-e632-41c0-8c8b-336c3226b5f7"
ssl_policy      = "ELBSecurityPolicy-2016-08"

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

http_listener_port  = 80
https_listener_port = 443

redirect_port        = "443"
redirect_protocol    = "HTTPS"
redirect_status_code = "HTTP_301"
redirect_host        = "#{host}"

remote_states = {
  vpc = {
    bucket = "dev-otms-statefile"
    key    = "network-skeleton/vpc/terraform.tfstate"
    region = "us-east-2"
  }
  subnet = {
    bucket = "dev-otms-statefile"
    key    = "network-skeleton/subnet/terraform.tfstate"
    region = "us-east-2"
  }
  frontend = {
    bucket = "dev-otms-statefile"
    key    = "application/frontend/target-group/terraform.tfstate"
    region = "us-east-2"
  }
  employee = {
    bucket = "dev-otms-statefile"
    key    = "application/employee/target-group/terraform.tfstate"
    region = "us-east-2"
  }
  salary = {
    bucket = "dev-otms-statefile"
    key    = "application/salary/target-group/terraform.tfstate"
    region = "us-east-2"
  }
  attendance = {
    bucket = "dev-otms-statefile"
    key    = "application/attendance/target-group/terraform.tfstate"
    region = "us-east-2"
  }
  notify = {
    bucket = "dev-otms-statefile"
    key    = "application/notification/target-group/terraform.tfstate"
    region = "us-east-2"
  }
}

routing_paths = [
  {
    path_pattern      = "/api/v1/employee/*"
    priority          = 1
    target_group_name = "employee"
  },
  {
    path_pattern      = "/api/v1/salary/*"
    priority          = 2
    target_group_name = "salary"
  },
  {
    path_pattern      = "/api/v1/attendance/*"
    priority          = 3
    target_group_name = "attendance"
  },
  {
    path_pattern      = "/api/v1/notify"
    priority          = 4
    target_group_name = "notify"
  }
]
