variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
}

variable "ami_id" {
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

variable "sg_state_key" {
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

variable "standard_tags" {
  description = "Standard project tags"
  type        = map(string)
}
