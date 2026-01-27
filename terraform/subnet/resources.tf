resource "aws_subnet" "default_172_31_48_0_20" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  vpc_id                                         = var.default_vpc_id
}

resource "aws_subnet" "bigbang_private_db_b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.3.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-db-subnet-b"
  }

  tags_all = {
    Name = "private-db-subnet-b"
  }

  vpc_id = var.bigbang_vpc_id
}

resource "aws_subnet" "default_172_31_32_0_20" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  vpc_id                                         = var.default_vpc_id
}

resource "aws_subnet" "default_172_31_16_0_20" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  vpc_id                                         = var.default_vpc_id
}

resource "aws_subnet" "bigbang_public_b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "public-subnet-b"
  }

  tags_all = {
    Name = "public-subnet-b"
  }

  vpc_id = var.bigbang_vpc_id
}

resource "aws_subnet" "default_172_31_0_0_20" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"
  vpc_id                                         = var.default_vpc_id
}

resource "aws_subnet" "bigbang_private_db_a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.2.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-db-subnet-a"
  }

  tags_all = {
    Name = "private-db-subnet-a"
  }

  vpc_id = var.bigbang_vpc_id
}

resource "aws_subnet" "bigbang_public_a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.0/24"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "public-subnet-a"
  }

  tags_all = {
    Name = "public-subnet-a"
  }

  vpc_id = var.bigbang_vpc_id
}
