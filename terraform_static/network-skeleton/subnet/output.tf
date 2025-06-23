# Public Subnets
output "dev_public_subnet_1_id" {
  value       = aws_subnet.public["dev-public-subnet-1"].id
  description = "Subnet ID of dev-public-subnet-1"
}

output "dev_public_subnet_2_id" {
  value       = aws_subnet.public["dev-public-subnet-2"].id
  description = "Subnet ID of dev-public-subnet-2"
}

# Private Subnets
output "dev_frontend_subnet_id" {
  value       = aws_subnet.private["dev-frontend-subnet"].id
  description = "Subnet ID of dev-frontend-subnet"
}

output "dev_api_subnet_id" {
  value       = aws_subnet.private["dev-api-subnet"].id
  description = "Subnet ID of dev-api-subnet"
}

output "dev_database_subnet_id" {
  value       = aws_subnet.private["dev-database-subnet"].id
  description = "Subnet ID of dev-database-subnet"
}
