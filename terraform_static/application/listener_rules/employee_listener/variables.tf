variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
}

variable "standard_tags" {
  description = "Standard project tags"
  type        = map(string)
}

variable "priority" {
  description = "Priority of the listener rule"
  type        = number
}

variable "path_pattern" {
  description = "Path pattern for routing"
  type        = string
}
