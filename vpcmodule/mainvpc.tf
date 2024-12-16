# Creation of VPC
resource "aws_vpc" "vpc_t" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "vpc_t"
  }
}
#Creation of Private Subnet
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.vpc_t.id
  cidr_block = var.privatesubnet_cidr_block
  availability_zone = var.privatesubnet_az
tags = {
    Name = "privatesubnet"
  }
}
#Creation of Public Subnet
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.vpc_t.id
  cidr_block = var.publicsubnet_cidr_block
  availability_zone = var.publicsubnet_az
tags = {
    Name = "publicsubnet"
  }
}
# Creation of Internet Gateway
resource "aws_internet_gateway" "igw_t" {
  vpc_id = aws_vpc.vpc_t.id

  tags = {
    Name = "igw_t"
  }
}
# Creation of Public Route table
resource "aws_route_table" "publicroutetable" {
vpc_id = aws_vpc.vpc_t.id
  route{
    gateway_id = aws_internet_gateway.igw_t.id
    cidr_block = "0.0.0.0/0"
  }
  tags = {
    Name = "publicroutetable"
  }
}
# Association of routetable to subnet
resource "aws_route_table_association" "routetableassociation" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.publicroutetable.id
}