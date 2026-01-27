terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source           = "./vpc"
  region           = var.region
  default_vpc_cidr = var.default_vpc_cidr
  bigbang_vpc_cidr = var.bigbang_vpc_cidr
  bigbang_vpc_name = var.bigbang_vpc_name
}

module "subnet" {
  source         = "./subnet"
  default_vpc_id = module.vpc.default_vpc_id
  bigbang_vpc_id = module.vpc.bigbang_vpc_id
}

module "sg" {
  source             = "./sg"
  region             = var.region
  default_vpc_id      = module.vpc.default_vpc_id
  bigbang_vpc_id      = module.vpc.bigbang_vpc_id
  bigbang_ec2_sg_name = var.bigbang_ec2_sg_name
  bigbang_rds_sg_name = var.bigbang_rds_sg_name
}

module "route_table" {
  source             = "./route_table"
  default_vpc_id     = module.vpc.default_vpc_id
  bigbang_vpc_id     = module.vpc.bigbang_vpc_id
  bigbang_public_a_id = module.subnet.bigbang_public_a_id
  bigbang_public_b_id = module.subnet.bigbang_public_b_id
}

module "ec2_instance" {
  source               = "./ec2_instance"
  region               = var.region
  availability_zone    = var.availability_zone
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  key_name             = var.key_name
  iam_instance_profile = var.iam_instance_profile
  private_ip           = var.private_ip
  instance_name        = var.instance_name
  bigbang_public_a_id  = module.subnet.bigbang_public_a_id
  bigbang_ec2_sg_id    = module.sg.bigbang_ec2_sg_id
}

module "rds" {
  source                   = "./rds"
  bigbang_rds_sg_id         = module.sg.bigbang_rds_sg_id
  bigbang_private_db_a_id   = module.subnet.bigbang_private_db_a_id
  bigbang_private_db_b_id   = module.subnet.bigbang_private_db_b_id
}

module "s3" {
  source = "./s3"
}

module "route53" {
  source = "./route53"
}
