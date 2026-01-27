# Terraform v1.5+ import blocks
# 각 ID를 실제 리소스 ID로 교체 후 import 블록을 복구하고 `terraform plan` 또는
# `terraform apply` 실행

import {
  to = module.vpc.aws_vpc.default_vpc
  id = "vpc-08b458e514460b167"
}

import {
  to = module.vpc.aws_vpc.bigbang_vpc
  id = "vpc-0a819cca9a3cade58"
}

import {
  to = module.subnet.aws_subnet.default_172_31_48_0_20
  id = "subnet-0059d882b7b122a79"
}

import {
  to = module.subnet.aws_subnet.bigbang_private_db_b
  id = "subnet-041178a9e59a6229f"
}

import {
  to = module.subnet.aws_subnet.default_172_31_32_0_20
  id = "subnet-04be296869857c2c9"
}

import {
  to = module.subnet.aws_subnet.default_172_31_16_0_20
  id = "subnet-0536f82cc024dc993"
}

import {
  to = module.subnet.aws_subnet.bigbang_public_b
  id = "subnet-08b959836e190f024"
}

import {
  to = module.subnet.aws_subnet.default_172_31_0_0_20
  id = "subnet-0a539b02a8b1758d0"
}

import {
  to = module.subnet.aws_subnet.bigbang_private_db_a
  id = "subnet-0b6109352bf3ab3c7"
}

import {
  to = module.subnet.aws_subnet.bigbang_public_a
  id = "subnet-0f65f33df4a2784be"
}


import {
  to = module.route_table.aws_route_table.bigbang_public_rt
  id = "rtb-03f4032eef7ceb84d"
}

import {
  to = module.route_table.aws_route_table.default_public_rt
  id = "rtb-0b540cf75e6c262a4"
}

import {
  to = module.route_table.aws_route_table.bigbang_private_rt
  id = "rtb-0d94e26802f8d1741"
}

import {
  to = module.route_table.aws_route_table_association.bigbang_public_b_assoc
  id = "subnet-08b959836e190f024/rtb-03f4032eef7ceb84d"
}

import {
  to = module.route_table.aws_route_table_association.bigbang_public_a_assoc
  id = "subnet-0f65f33df4a2784be/rtb-03f4032eef7ceb84d"
}

import {
  to = module.sg.aws_security_group.bigbang_ec2
  id = "sg-03c521dd614225119"
}

import {
  to = module.sg.aws_security_group.bigbang_rds
  id = "sg-06b5c14275bdaa3ec"
}

import {
  to = module.sg.aws_security_group.default_bigbang_vpc
  id = "sg-0242ed6f08456649f"
}

import {
  to = module.sg.aws_security_group.default_legacy_vpc
  id = "sg-0716d0974ac4ce08a"
}

import {
  to = module.ec2_instance.aws_instance.bigbang_ec2
  id = "i-08e904b172a8407e6"
}

import {
  to = module.rds.aws_db_instance.bigbang_rds
  id = "bigbang-rds"
}

import {
  to = module.rds.aws_db_snapshot.bigbang_rds_2026_01_20_0540
  id = "rds:bigbang-rds-2026-01-20-05-40"
}

import {
  to = module.rds.aws_db_snapshot.bigbang_rds_2026_01_21_1701
  id = "rds:bigbang-rds-2026-01-21-17-01"
}

import {
  to = module.rds.aws_db_snapshot.bigbang_rds_2026_01_22_1708
  id = "rds:bigbang-rds-2026-01-22-17-08"
}

import {
  to = module.rds.aws_db_subnet_group.bigbang_db_subnet_group
  id = "bigbang-db-subnet-group"
}

import {
  to = module.s3.aws_s3_bucket.commitme_bucket
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_policy.commitme_bucket_policy
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_acl.commitme_bucket_acl
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_cors_configuration.commitme_bucket_cors
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_request_payment_configuration.commitme_bucket_request_payment
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_server_side_encryption_configuration.commitme_bucket_sse
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_versioning.commitme_bucket_versioning
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.s3.aws_s3_bucket_website_configuration.commitme_bucket_website
  id = "commitme-s3-bucket-v1"
}

import {
  to = module.route53.aws_route53_zone.commit_me_zone
  id = "Z04862849CR6UNJQ2FFS"
}

# Route53 레코드 import 형식: ZONEID_RECORDNAME_TYPE
# 예: Z1234567890ABC_commit-me.com_A

import {
  to = module.route53.aws_route53_record.commit_me_a
  id = "Z04862849CR6UNJQ2FFS_commit-me.com_A"
}

import {
  to = module.route53.aws_route53_record.commit_me_ns
  id = "Z04862849CR6UNJQ2FFS_commit-me.com_NS"
}

import {
  to = module.route53.aws_route53_record.commit_me_soa
  id = "Z04862849CR6UNJQ2FFS_commit-me.com_SOA"
}
