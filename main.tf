# VPC
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

# Subnet
resource "aws_default_subnet" "default_az1" {
  availability_zone = "eu-west-1"

  tags = {
    Name = "Default subnet for eu-west-1"
  }
}
