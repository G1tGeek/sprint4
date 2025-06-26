variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_state_path" {
  description = "Terraform state path for VPC"
  type        = string
}

variable "instance_state_path" {
  description = "Terraform state path for the employee instance"
  type        = string
}

variable "vpc_state_output_name" {
  description = "Name of the output variable in the VPC state file"
  type        = string
}

variable "instance_output_name" {
  description = "Name of the output variable for the employee instance ID"
  type        = string
}

variable "target_group_name" {
  description = "Name of the target group"
  type        = string
}

variable "port" {
  description = "Port for the target group"
  type        = number
}

variable "protocol" {
  description = "Protocol for the target group"
  type        = string
}

variable "standard_tags" {
  description = "Tags to be applied"
  type        = map(string)
}
