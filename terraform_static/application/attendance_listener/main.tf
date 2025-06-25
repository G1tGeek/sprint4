resource "aws_lb_listener_rule" "attendance_path_rule" {
  listener_arn = data.terraform_remote_state.listener.outputs.https_listener_arn
  priority     = var.priority

  action {
    type             = "forward"
    target_group_arn = data.terraform_remote_state.attendance.outputs.target_group_arn
  }

  condition {
    path_pattern {
      values = [var.path_pattern]
    }
  }

  tags = var.standard_tags
}
