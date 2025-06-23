# AWS Region
variable "aws_region" {
  description = "AWS region"
  type        = string
}

# Remote bucket
variable "s3_bucket" {
  type = string
}


# Remote State File Paths
variable "vpc_state_file" {
  description = "Path to the VPC state file in the S3 bucket"
  type        = string
}

variable "subnet_state_file" {
  description = "Path to the Subnet state file in the S3 bucket"
  type        = string
}

variable "igw_state_file" {
  description = "Path to the Internet Gateway state file in the S3 bucket"
  type        = string
}

variable "nat_state_file" {
  description = "Path to the NAT Gateway state file in the S3 bucket"
  type        = string
}

# Standard Tags
variable "standard_tags" {
  description = "Standard tags for resources"
  type        = map(string)
}
