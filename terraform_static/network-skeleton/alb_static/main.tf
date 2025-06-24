locals {
  tg_states = {
    frontend   = data.terraform_remote_state.frontend.outputs.target_group_arn
    employee   = data.terraform_remote_state.employee.outputs.target_group_arn
    salary     = data.terraform_remote_state.salary.outputs.target_group_arn
    attendance = data.terraform_remote_state.attendance.outputs.target_group_arn
    notify     = data.terraform_remote_state.notify.outputs.target_group_arn
  }
}

# Remote state data
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = var.remote_states["vpc"]
}

data "terraform_remote_state" "subnet" {
  backend = "s3"
  config = var.remote_states["subnet"]
}

data "terraform_remote_state" "frontend" {
  backend = "s3"
  config = var.remote_states["frontend"]
}

data "terraform_remote_state" "employee" {
  backend = "s3"
  config = var.remote_states["employee"]
}

data "terraform_remote_state" "salary" {
  backend = "s3"
  config = var.remote_states["salary"]
}

data "terraform_remote_state" "attendance" {
  backend = "s3"
  config = var.remote_states["attendance"]
}

data "terraform_remote_state" "notify" {
  backend = "s3"
  config = var.remote_states["notify"]
}

# ALB SG
resource "aws_security_group" "alb_sg" {
  name   = "${var.alb_name}-sg"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  dynamic "ingress" {
    for_each = var.alb_sg_ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.alb_sg_egress_rules
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }

  tags = var.standard_tags
}

resource "aws_lb" "this" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets = [
    data.terraform_remote_state.subnet.outputs.dev_public_subnet_1_id,
    data.terraform_remote_state.subnet.outputs.dev_public_subnet_2_id
  ]
  ip_address_type = "ipv4"
  tags            = var.standard_tags
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.https_listener_port
  protocol          = "HTTPS"
  ssl_policy        = var.ssl_policy
  certificate_arn   = var.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = local.tg_states["frontend"]
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.http_listener_port
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      port        = var.redirect_port
      protocol    = var.redirect_protocol
      status_code = var.redirect_status_code
      host        = var.redirect_host
    }
  }
}

# Path-based listener rules
resource "aws_lb_listener_rule" "paths" {
  for_each = { for rule in var.routing_paths : rule.priority => rule }

  listener_arn = aws_lb_listener.https.arn
  priority     = each.value.priority

  action {
    type             = "forward"
    target_group_arn = local.tg_states[each.value.target_group_name]
  }

  condition {
    path_pattern {
      values = [each.value.path_pattern]
    }
  }
}
