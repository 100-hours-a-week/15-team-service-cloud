output "bigbang_ec2_sg_id" {
  value = aws_security_group.bigbang_ec2.id
}

output "bigbang_rds_sg_id" {
  value = aws_security_group.bigbang_rds.id
}

output "default_bigbang_vpc_sg_id" {
  value = aws_security_group.default_bigbang_vpc.id
}

output "default_legacy_vpc_sg_id" {
  value = aws_security_group.default_legacy_vpc.id
}
