data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.vpc_state_key
    region = var.aws_region
  }
}

data "terraform_remote_state" "subnet" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.subnet_state_key
    region = var.aws_region
  }
}

resource "aws_security_group" "scylla_sg" {
  name        = var.security_group_name
  description = "Temporary allow-all traffic"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {
    from_port   = var.sg_ingress_from_port
    to_port     = var.sg_ingress_to_port
    protocol    = var.sg_ingress_protocol
    cidr_blocks = [var.sg_ingress_cidr]
  }

  egress {
    from_port   = var.sg_egress_from_port
    to_port     = var.sg_egress_to_port
    protocol    = var.sg_egress_protocol
    cidr_blocks = [var.sg_egress_cidr]
  }

  tags = merge(var.standard_tags, {
    Name = var.security_group_name
  })
}

resource "aws_instance" "scylla" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = data.terraform_remote_state.subnet.outputs.dev_database_subnet_id
  key_name                    = var.key_name
  associate_public_ip_address = false

  root_block_device {
    volume_size = var.disk_size
  }

  vpc_security_group_ids = [aws_security_group.scylla_sg.id]

  tags = merge(var.standard_tags, {
    Name = var.instance_name
  })
}
