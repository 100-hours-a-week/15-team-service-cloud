output "bigbang_public_b_assoc_id" {
  value = aws_route_table_association.bigbang_public_b_assoc.id
}

output "bigbang_public_a_assoc_id" {
  value = aws_route_table_association.bigbang_public_a_assoc.id
}

output "bigbang_public_rt_id" {
  value = aws_route_table.bigbang_public_rt.id
}

output "default_public_rt_id" {
  value = aws_route_table.default_public_rt.id
}

output "bigbang_private_rt_id" {
  value = aws_route_table.bigbang_private_rt.id
}
