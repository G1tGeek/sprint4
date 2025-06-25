resource "aws_lb_target_group" "employee_tg" {
  name = local.prefixed_tg_name
  port        = var.port
  protocol    = var.protocol
  target_type = "instance"
  vpc_id      = data.terraform_remote_state.vpc.outputs[var.vpc_state_output_name]

  health_check {
    path                = "/api/v1/employee/health"
    healthy_threshold   = 3
    unhealthy_threshold = 2
    timeout             = 5
    interval            = 60
    matcher             = "200"
  }

  ip_address_type = "ipv4"

  tags = var.standard_tags
}

resource "aws_lb_target_group_attachment" "employee_attachment" {
  target_group_arn = aws_lb_target_group.employee_tg.arn
  target_id        = data.terraform_remote_state.employee_instance.outputs[var.instance_output_name]
  port             = var.port
}
