resource "aws_security_group" "alb_sg" {
  name   = local.prefixed_security_group_name
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

resource "aws_lb" "load-balancer" {
  name               = local.prefixed_alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets = [
    data.terraform_remote_state.subnet.outputs.dev_public_subnet_1_id,
    data.terraform_remote_state.subnet.outputs.dev_public_subnet_2_id
  ]
  ip_address_type = "ipv4"

  tags = var.standard_tags
}
