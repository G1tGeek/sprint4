# AWS Region
variable "aws_region" {
  description = "AWS region"
  type        = string
}

# S3 Backend Configuration
variable "s3_bucket" {
  description = "S3 bucket for storing the Terraform state"
  type        = string
}


# Remote State Files
variable "vpc_state_file" {
  description = "Path to the VPC state file in the S3 bucket"
  type        = string
}

variable "subnet_state_file" {
  description = "Path to the Subnet state file in the S3 bucket"
  type        = string
}

# NAT Gateway Configuration
variable "nat_gateway_name" {
  description = "Name of the NAT Gateway"
  type        = string
}

# Standard Tags
variable "standard_tags" {
  description = "Standard tags for resources"
  type        = map(string)
}
