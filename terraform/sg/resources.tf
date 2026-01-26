resource "aws_security_group" "bigbang_ec2" {
  description = "launch-wizard-1 created 2026-01-20T22:58:36.724Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["211.244.225.166/32", "211.244.225.211/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = var.bigbang_ec2_sg_name
  region = var.region

  tags = {
    Name = var.bigbang_ec2_sg_name
  }

  tags_all = {
    Name = var.bigbang_ec2_sg_name
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.bigbang_vpc_id
}

resource "aws_security_group" "bigbang_rds" {
  description = "Created by RDS management console"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks     = ["211.244.225.211/32"]
    from_port       = "3306"
    protocol        = "tcp"
    security_groups = [aws_security_group.bigbang_ec2.id]
    self            = "false"
    to_port         = "3306"
  }

  name   = var.bigbang_rds_sg_name
  region = var.region

  tags = {
    Name = var.bigbang_rds_sg_name
  }

  tags_all = {
    Name = var.bigbang_rds_sg_name
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.bigbang_vpc_id
}

resource "aws_security_group" "default_bigbang_vpc" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = var.region
  vpc_id = data.terraform_remote_state.vpc.outputs.bigbang_vpc_id
}

resource "aws_security_group" "default_legacy_vpc" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = var.region
  vpc_id = data.terraform_remote_state.vpc.outputs.default_vpc_id
}
