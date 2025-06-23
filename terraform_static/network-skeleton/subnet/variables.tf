variable "vpc_state_key" {
  
}

variable "s3_bucket" {
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}


variable "public_subnets" {
  type = list(object({
    name       : string
    cidr_block : string
    az         : string
  }))
}

variable "private_subnets" {
  type = list(object({
    name       : string
    cidr_block : string
    az         : string
  }))
}

variable "standard_tags" {
  type = map(string)
}
