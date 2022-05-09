// AWS VPC 
resource "aws_vpc" "fgtvm-vpc" {
  cidr_block           = var.vpc-cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_classiclink   = false
  instance_tenancy     = "default"
  tags = {
    Name = "demo-vpc-infrastucture"
  }
}

# VPC Private / Public Subnet

resource "aws_subnet" "public-subnet-az1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.publiccidraz1
  availability_zone = var.az1
  tags = {
    Name = "public subnet az1"
  }
}

resource "aws_subnet" "public-subnet-az2" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.publiccidraz2
  availability_zone = var.az2
  tags = {
    Name = "public subnet az2"
  }
}


resource "aws_subnet" "private-subnet-az1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.privatecidraz1
  availability_zone = var.az1
  tags = {
    Name = "private subnet az1"
  }
}

resource "aws_subnet" "private-subnet-az2" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.privatecidraz2
  availability_zone = var.az2
  tags = {
    Name = "private subnet az2"
  }
}

resource "aws_subnet" "ha-sync-subnet-az1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.hasynccidraz1
  availability_zone = var.az1
  tags = {
    Name = "ha-sync subnet az1"
  }
}

resource "aws_subnet" "ha-sync-subnet-az2" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.hasynccidraz2
  availability_zone = var.az2
  tags = {
    Name = "ha-sync subnet az2"
  }
}

resource "aws_subnet" "ha-mgmt-subnet-az1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.hamgmtcidraz1
  availability_zone = var.az1
  tags = {
    Name = "ha-mgmt subnet az1"
  }
}

resource "aws_subnet" "ha-mgmt-subnet-az2" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.hamgmtcidraz2
  availability_zone = var.az2
  tags = {
    Name = "ha-mgmt subnet az2"
  }
}

# Transit Gateway Subnet

resource "aws_subnet" "tgw-az1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.tgw-az1
  availability_zone = var.az1
  tags = {
    Name = "transit gateway az1"
  }
}

resource "aws_subnet" "tgw-az2" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.tgw-az2
  availability_zone = var.az2
  tags = {
    Name = "transit gateway az2"
  }
}
