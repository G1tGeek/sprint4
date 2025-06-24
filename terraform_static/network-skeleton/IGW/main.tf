resource "aws_internet_gateway" "dev_igw" {
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = merge(
    {
      Name = local.prefixed_igw_name
    },
    var.standard_tags
  )
}
