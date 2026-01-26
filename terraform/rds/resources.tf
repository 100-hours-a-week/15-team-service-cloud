resource "aws_db_instance" "bigbang_rds" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "ap-northeast-2a"
  backup_retention_period               = "7"
  backup_target                         = "region"
  backup_window                         = "17:00-17:30"
  ca_cert_identifier                    = "rds-ca-rsa2048-g1"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  database_insights_mode                = "standard"
  db_subnet_group_name                  = aws_db_subnet_group.bigbang_db_subnet_group.name
  dedicated_log_volume                  = "false"
  deletion_protection                   = "false"
  enabled_cloudwatch_logs_exports       = ["error", "general", "slowquery"]
  engine                                = "mysql"
  engine_lifecycle_support              = "open-source-rds-extended-support-disabled"
  engine_version                        = "8.0.43"
  iam_database_authentication_enabled   = "false"
  identifier                            = "bigbang-rds"
  instance_class                        = "db.t4g.small"
  iops                                  = "3000"
  kms_key_id                            = "arn:aws:kms:ap-northeast-2:248312021437:key/f965c8dd-b47a-4b9f-949b-7ca7106eab65"
  license_model                         = "general-public-license"
  maintenance_window                    = "mon:17:38-mon:18:08"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "60"
  monitoring_role_arn                   = "arn:aws:iam::248312021437:role/rds-monitoring-role"
  multi_az                              = "false"
  network_type                          = "IPV4"
  option_group_name                     = "default:mysql-8-0"
  parameter_group_name                  = "default.mysql8.0"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "3306"
  publicly_accessible                   = "false"
  region                                = "ap-northeast-2"
  storage_encrypted                     = "true"
  storage_throughput                    = "125"
  storage_type                          = "gp3"
  username                              = "admin"
  vpc_security_group_ids                = [data.terraform_remote_state.sg.outputs.bigbang_rds_sg_id]
}

resource "aws_db_snapshot" "bigbang_rds_2026_01_20_0540" {
  db_instance_identifier = "bigbang-rds"
  db_snapshot_identifier = "rds:bigbang-rds-2026-01-20-05-40"
  region                 = "ap-northeast-2"
}

resource "aws_db_snapshot" "bigbang_rds_2026_01_21_1701" {
  db_instance_identifier = "bigbang-rds"
  db_snapshot_identifier = "rds:bigbang-rds-2026-01-21-17-01"
  region                 = "ap-northeast-2"
}

resource "aws_db_snapshot" "bigbang_rds_2026_01_22_1708" {
  db_instance_identifier = "bigbang-rds"
  db_snapshot_identifier = "rds:bigbang-rds-2026-01-22-17-08"
  region                 = "ap-northeast-2"
}

resource "aws_db_subnet_group" "bigbang_db_subnet_group" {
  description = "BigBang deploy db subnet group (2 private subnets of BigBang VPC)"
  name        = "bigbang-db-subnet-group"
  region      = "ap-northeast-2"
  subnet_ids  = [data.terraform_remote_state.subnet.outputs.bigbang_private_db_b_id, data.terraform_remote_state.subnet.outputs.bigbang_private_db_a_id]
}
