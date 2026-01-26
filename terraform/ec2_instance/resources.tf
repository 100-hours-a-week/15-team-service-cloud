resource "aws_instance" "bigbang_ec2" {
  ami                         = var.ami_id
  associate_public_ip_address = "true"
  availability_zone           = var.availability_zone

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "2"
    threads_per_core = "1"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = var.iam_instance_profile
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = var.instance_type
  ipv6_address_count                   = "0"
  key_name                             = var.key_name

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-0644c91c0642770d7"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = var.private_ip
  region     = var.region

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "20"
    volume_type           = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = data.terraform_remote_state.subnet.outputs.bigbang_public_a_id

  tags = {
    Name = var.instance_name
  }

  tags_all = {
    Name = var.instance_name
  }

  tenancy                = "default"
  vpc_security_group_ids = [data.terraform_remote_state.sg.outputs.bigbang_ec2_sg_id]
}
