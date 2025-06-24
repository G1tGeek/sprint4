resource "aws_route_table" "public_rt" {
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.terraform_remote_state.igw.outputs.igw_id
  }

  tags = merge(
    var.standard_tags,
    {
      Name = local.prefixed_public_rt_name
    }
  )
}

# Private Route Table
resource "aws_route_table" "private_rt" {
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = data.terraform_remote_state.nat.outputs.nat_gateway_id
  }

  tags = merge(
    var.standard_tags,
    {
      Name = local.prefixed_private_rt_name
    }
  )
}

# Subnet Associations for Public Route Table
resource "aws_route_table_association" "public_rt_assoc_1" {
  subnet_id      = data.terraform_remote_state.subnet.outputs.dev_public_subnet_1_id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "public_rt_assoc_2" {
  subnet_id      = data.terraform_remote_state.subnet.outputs.dev_public_subnet_2_id
  route_table_id = aws_route_table.public_rt.id
}

# Subnet Associations for Private Route Table
resource "aws_route_table_association" "private_rt_assoc_frontend" {
  subnet_id      = data.terraform_remote_state.subnet.outputs.dev_frontend_subnet_id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_rt_assoc_api" {
  subnet_id      = data.terraform_remote_state.subnet.outputs.dev_api_subnet_id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private_rt_assoc_database" {
  subnet_id      = data.terraform_remote_state.subnet.outputs.dev_database_subnet_id
  route_table_id = aws_route_table.private_rt.id
}
