resource "aws_main_route_table_association" "default_main_rt_assoc" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.default_public_rt.id
  vpc_id         = data.terraform_remote_state.vpc.outputs.default_vpc_id
}

resource "aws_main_route_table_association" "bigbang_main_rt_assoc" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.bigbang_private_rt.id
  vpc_id         = data.terraform_remote_state.vpc.outputs.bigbang_vpc_id
}

resource "aws_route_table" "bigbang_public_rt" {
  region = "ap-northeast-2"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-00b0a069f355ed25c"
  }

  tags = {
    Name = "BigBang-routetable-public"
  }

  tags_all = {
    Name = "BigBang-routetable-public"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.bigbang_vpc_id
}

resource "aws_route_table" "default_public_rt" {
  region = "ap-northeast-2"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0f4bb5763a4d3f0be"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.default_vpc_id
}

resource "aws_route_table" "bigbang_private_rt" {
  region = "ap-northeast-2"

  tags = {
    Name = "BigBang-routetable-private"
  }

  tags_all = {
    Name = "BigBang-routetable-private"
  }

  vpc_id = data.terraform_remote_state.vpc.outputs.bigbang_vpc_id
}

resource "aws_route_table_association" "bigbang_public_b_assoc" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.bigbang_public_rt.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.bigbang_public_b_id
}

resource "aws_route_table_association" "bigbang_public_a_assoc" {
  region         = "ap-northeast-2"
  route_table_id = aws_route_table.bigbang_public_rt.id
  subnet_id      = data.terraform_remote_state.subnet.outputs.bigbang_public_a_id
}
