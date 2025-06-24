resource "aws_eip" "nat_eip" {
  tags = merge(
    var.standard_tags,
    {
      Name = "${var.nat_gateway_name}-eip"
    }
  )
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = data.terraform_remote_state.subnet.outputs.dev_public_subnet_1_id
  tags = merge(
    var.standard_tags,
    {
      Name = local.prefixed_nat_gateway_name
    }
  )
}
