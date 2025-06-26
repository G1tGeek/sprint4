variable "aws_region" {
  type = string
}

variable "standard_tags" {
  type = map(string)
}

variable "priority" {
  type = number
}

variable "path_pattern" {
  type = string
}
