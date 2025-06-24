# General
variable "aws_region" { type = string }
variable "alb_name" { type = string }
variable "certificate_arn" { type = string }
variable "ssl_policy" { type = string }

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

# HTTP -> HTTPS redirect
variable "http_listener_port" { type = number }
variable "https_listener_port" { type = number }

# Redirect details
variable "redirect_port" { type = string }
variable "redirect_protocol" { type = string }
variable "redirect_status_code" { type = string }
variable "redirect_host" { type = string }

# Remote state configs
variable "remote_states" {
  type = map(object({
    bucket = string
    key    = string
    region = string
  }))
}

# Path rules
variable "routing_paths" {
  type = list(object({
    path_pattern      = string
    priority          = number
    target_group_name = string
  }))
}
