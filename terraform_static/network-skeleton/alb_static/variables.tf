# General
variable "aws_region" { type = string }
variable "alb_name" { type = string }
variable "security_group_name" { type = string }

# Tags
variable "standard_tags" {
  type = map(string)
}

# ALB SG rules
variable "alb_sg_ingress_rules" {
  description = "List of ingress rules (port/protocol/cidr)"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "alb_sg_egress_rules" {
  description = "List of egress rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

# Remote state configs
variable "remote_states" {
  type = map(object({
    bucket = string
    key    = string
    region = string
  }))
}
