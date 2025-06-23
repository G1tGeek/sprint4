aws_region = "us-east-2"

vpc_cidr   = "10.0.0.0/25"
vpc_name   = "dev-otms-vpc"

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
