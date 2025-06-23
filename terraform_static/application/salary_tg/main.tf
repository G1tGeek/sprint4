data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "dev-otms-statefile"
    key    = var.vpc_state_path
    region = var.aws_region
  }
}

data "terraform_remote_state" "salary_instance" {
  backend = "s3"
  config = {
    bucket = "dev-otms-statefile"
    key    = var.instance_state_path
    region = var.aws_region
  }
}

resource "aws_lb_target_group" "salary_tg" {
  name        = var.target_group_name
  port        = var.port
  protocol    = var.protocol
  target_type = "instance"
  vpc_id      = data.terraform_remote_state.vpc.outputs[var.vpc_state_output_name]

  health_check {
    path                = "/actuator/health"
    healthy_threshold   = 3
    unhealthy_threshold = 2
    timeout             = 5
    interval            = 60
    matcher             = "200"
  }

  ip_address_type = "ipv4"

  tags = var.standard_tags
}

resource "aws_lb_target_group_attachment" "salary_attachment" {
  target_group_arn = aws_lb_target_group.salary_tg.arn
  target_id        = data.terraform_remote_state.salary_instance.outputs[var.instance_output_name]
  port             = var.port
}
