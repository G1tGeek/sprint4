region = "us-east-2"

s3_bucket = "dev-otms-statefile"

vpc_state_key = "network-skeleton/vpc/terraform.tfstate"

public_subnets = [
  {
    name       = "dev-public-subnet-1"
    cidr_block = "10.0.0.0/28"
    az         = "us-east-2a"
  },
  {
    name       = "dev-public-subnet-2"
    cidr_block = "10.0.0.16/28"
    az         = "us-east-2b"
  }
]

private_subnets = [
  {
    name       = "dev-frontend-subnet"
    cidr_block = "10.0.0.32/28"
    az         = "us-east-2a"
  },
  {
    name       = "dev-api-subnet"
    cidr_block = "10.0.0.64/27"
    az         = "us-east-2a"
  },
  {
    name       = "dev-database-subnet"
    cidr_block = "10.0.0.96/28"
    az         = "us-east-2a"
  }
]

standard_tags = {
  Application = "OTMS"
  Owner       = "Adil"
  Environment = "Dev"
  CostCenter  = "dev-otms"
}
