resource "aws_vpc" "default_vpc" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = var.default_vpc_cidr
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  region                               = var.region
}

resource "aws_vpc" "bigbang_vpc" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = var.bigbang_vpc_cidr
  enable_dns_hostnames                 = "false"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  region                               = var.region

  tags = {
    Name = var.bigbang_vpc_name
  }

  tags_all = {
    Name = var.bigbang_vpc_name
  }
}
