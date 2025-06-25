aws_region      = "us-east-2"
certificate_arn = "arn:aws:acm:us-east-2:553653219591:certificate/9147c3c4-e632-41c0-8c8b-336c3226b5f7"
ssl_policy      = "ELBSecurityPolicy-2016-08"

standard_tags = {
  Application = "OTMS"
  Owner       = "Yuvraj"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
