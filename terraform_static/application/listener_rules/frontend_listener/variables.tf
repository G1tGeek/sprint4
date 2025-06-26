variable "certificate_arn" {
  type        = string
  description = "ACM certificate ARN for HTTPS"
}

variable "ssl_policy" {
  type        = string
  description = "SSL policy for the HTTPS listener"
}

variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
}

variable "standard_tags" {
  description = "Standard project tags"
  type        = map(string)
}