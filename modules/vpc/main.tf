# resource "aws_vpc" "pulsar_vpc" {
#     cidr_block = "10.0.0.0/16"
#     enable_dns_support = true
#     enable_dns_hostnames = true
# }

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
}