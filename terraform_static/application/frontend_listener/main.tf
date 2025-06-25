resource "aws_lb_listener" "https" {
  load_balancer_arn = data.terraform_remote_state.alb.outputs.alb_arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = var.ssl_policy
  certificate_arn   = var.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = data.terraform_remote_state.frontend.outputs.target_group_arn
  }
  tags = var.standard_tags
}
