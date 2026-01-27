variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-northeast-2"
}

variable "default_vpc_id" {
  type        = string
  description = "Default VPC ID"
}

variable "bigbang_vpc_id" {
  type        = string
  description = "BigBang VPC ID"
}

variable "bigbang_ec2_sg_name" {
  type        = string
  description = "Name tag for the BigBang EC2 security group"
  default     = "BigBang-EC2"
}

variable "bigbang_rds_sg_name" {
  type        = string
  description = "Name tag for the BigBang RDS security group"
  default     = "BigBang-rds"
}
