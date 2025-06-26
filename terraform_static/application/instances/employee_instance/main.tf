resource "aws_instance" "employee" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = data.terraform_remote_state.subnet.outputs.dev_database_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = false

  root_block_device {
    volume_size = var.disk_size
  }

  vpc_security_group_ids = [data.terraform_remote_state.security_group.outputs.employee_sg_id]

  tags = merge(var.standard_tags, {
    Name = local.prefixed_instance_name
  })
}
