region = "us-east-2"

s3_bucket = "mygurukulam-p14-tfstate"

vpc_state_key = "env/dev/network-skeleton/vpc/terraform.tfstate"

public_subnets = [
  {
    name       = "public-subnet-1"
    cidr_block = "10.0.0.0/28"
    az         = "us-east-2a"
  },
  {
    name       = "public-subnet-2"
    cidr_block = "10.0.0.16/28"
    az         = "us-east-2b"
  }
]

private_subnets = [
  {
    name       = "frontend-subnet"
    cidr_block = "10.0.0.32/28"
    az         = "us-east-2a"
  },
  {
    name       = "api-subnet"
    cidr_block = "10.0.0.64/27"
    az         = "us-east-2a"
  },
  {
    name       = "database-subnet"
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
