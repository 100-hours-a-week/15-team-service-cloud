variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-northeast-2"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone for the instance"
  default     = "ap-northeast-2a"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the instance"
  default     = "ami-04f06fb5ae9dcc778"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t4g.medium"
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name"
  default     = "BigBangKey"
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM instance profile name"
  default     = "ec2-dns-cert-renew"
}

variable "private_ip" {
  type        = string
  description = "Private IP address for the instance"
  default     = "10.0.0.103"
}

variable "instance_name" {
  type        = string
  description = "Name tag for the instance"
  default     = "BigBang-EC2"
}

variable "default_vpc_cidr" {
  type        = string
  description = "CIDR for the default VPC"
  default     = "172.31.0.0/16"
}

variable "bigbang_vpc_cidr" {
  type        = string
  description = "CIDR for the BigBang VPC"
  default     = "10.0.0.0/16"
}

variable "bigbang_vpc_name" {
  type        = string
  description = "Name tag for the BigBang VPC"
  default     = "BigBangDeploy"
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
