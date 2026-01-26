output "default_vpc_id" {
  value = aws_vpc.default_vpc.id
}

output "bigbang_vpc_id" {
  value = aws_vpc.bigbang_vpc.id
}
