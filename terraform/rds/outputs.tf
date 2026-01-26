output "bigbang_rds_instance_id" {
  value = aws_db_instance.bigbang_rds.id
}

output "bigbang_rds_snapshot_2026_01_20_0540_id" {
  value = aws_db_snapshot.bigbang_rds_2026_01_20_0540.id
}

output "bigbang_rds_snapshot_2026_01_21_1701_id" {
  value = aws_db_snapshot.bigbang_rds_2026_01_21_1701.id
}

output "bigbang_rds_snapshot_2026_01_22_1708_id" {
  value = aws_db_snapshot.bigbang_rds_2026_01_22_1708.id
}

output "bigbang_db_subnet_group_id" {
  value = aws_db_subnet_group.bigbang_db_subnet_group.id
}
