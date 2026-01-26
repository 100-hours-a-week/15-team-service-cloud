variable "region" {
  type        = string
  description = "AWS region"
  default     = "ap-northeast-2"
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
