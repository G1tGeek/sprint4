resource "aws_security_group" "employee_sg" {
  name        = local.prefixed_security_group_name
  description = "Security group for employee"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {
    description     = "Allow SSH from OpenVPN SG"
    from_port       = var.ssh_port
    to_port         = var.ssh_port
    protocol        = "tcp"
    security_groups = [var.openvpn_sg_id]
  }

  ingress {
    description     = "Allow App Port from ALB SG"
    from_port       = var.app_port
    to_port         = var.app_port
    protocol        = "tcp"
    security_groups = [data.terraform_remote_state.alb.outputs.alb_sg_id]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.egress_cidr
  }

  tags = var.standard_tags
}
