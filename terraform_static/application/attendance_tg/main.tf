resource "aws_lb_target_group" "attendance_tg" {
  name = local.prefixed_tg_name
  port        = var.port
  protocol    = var.protocol
  target_type = "instance"
  vpc_id      = data.terraform_remote_state.vpc.outputs[var.vpc_state_output_name]

  health_check {
    path                = "/api/v1/attendance/health"
    healthy_threshold   = 3
    unhealthy_threshold = 2
    timeout             = 5
    interval            = 60
    matcher             = "200"
  }

  ip_address_type = "ipv4"

  tags = var.standard_tags
}

resource "aws_lb_target_group_attachment" "attendance_attachment" {
  target_group_arn = aws_lb_target_group.attendance_tg.arn
  target_id        = data.terraform_remote_state.attendance_instance.outputs[var.instance_output_name]
  port             = var.port
}
