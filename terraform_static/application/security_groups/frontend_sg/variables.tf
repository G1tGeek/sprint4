variable "openvpn_sg_id" {
  description = "Security group ID of the OpenVPN server"
  type        = string
}

variable "ssh_port" {
  description = "Port to allow from OpenVPN SG"
  type        = number
}

variable "https_port" {
  description = "Port to allow from ALB SG"
  type        = number
}

variable "app_port" {
  description = "Application port to allow from ALB SG"
  type        = number
}

variable "egress_cidr" {
  description = "CIDR block to allow for outbound traffic"
  type        = list(string)
}

variable "standard_tags" {
  description = "Standard tags to apply to resources"
  type        = map(string)
}

variable "vpc_state_key" {
  description = "S3 state key path for the VPC remote state"
  type        = string
}

variable "alb_state_key" {
  description = "S3 state key path for the ALB remote state"
  type        = string
}

variable "state_bucket" {
  description = "Name of the centralized S3 bucket for state"
  type        = string
}

variable "region" {
  description = "Region where the centralized S3 bucket is hosted"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}