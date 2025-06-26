variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
}

variable "remote_state_bucket" {
  description = "S3 bucket for remote state"
  type        = string
}

variable "vpc_state_key" {
  description = "S3 key path to VPC state file"
  type        = string
}

variable "subnet_state_key" {
  description = "S3 key path to Subnet state file"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string

  validation {
    condition     = contains(["t2.micro", "t2.small", "t2.medium", "t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Invalid instance type. Allowed types are t2.micro, t2.small, t2.medium, t3.micro, t3.small, and t3.medium."
  }
}

variable "disk_size" {
  description = "Root volume size (GB)"
  type        = number
}

variable "key_name" {
  description = "PEM key name"
  type        = string
}

variable "security_group_name" {
  description = "Name of the Security Group"
  type        = string
}

variable "sg_ingress_from_port" {
  type        = number
  description = "Ingress from port"
}

variable "sg_ingress_to_port" {
  type        = number
  description = "Ingress to port"
}

variable "sg_ingress_protocol" {
  type        = string
  description = "Ingress protocol"
}

variable "sg_ingress_cidr" {
  type        = string
  description = "Ingress CIDR block"
}

variable "sg_egress_from_port" {
  type        = number
  description = "Egress from port"
}

variable "sg_egress_to_port" {
  type        = number
  description = "Egress to port"
}

variable "sg_egress_protocol" {
  type        = string
  description = "Egress protocol"
}

variable "sg_egress_cidr" {
  type        = string
  description = "Egress CIDR block"
}

variable "standard_tags" {
  description = "Standard project tags"
  type        = map(string)
}
