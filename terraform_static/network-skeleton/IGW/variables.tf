variable "igw_name" {
  description = "Name tag for the Internet Gateway"
  type        = string
}


variable "standard_tags" {
  description = "Standard tags applied to all resources"
  type        = map(string)
}

# other variables...
variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_state_bucket" {
  description = "S3 bucket name where VPC state is stored"
  type        = string
}

variable "vpc_state_key" {
  description = "S3 key/path to the VPC state file"
  type        = string
}
