## Instance Jumpbox 

resource "aws_instance" "instance" {
  ami                         = "ami-0022f774911c1d690"
  availability_zone           = var.az1
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.public-subnet-az1.id
  key_name                    = var.keyname
}

resource "aws_security_group" "sg" {
  name        = "test-sg"
  description = "test"
  vpc_id      = aws_vpc.fgtvm-vpc.id
 
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

## Instance Private

resource "aws_instance" "priv-instance" {
  ami                         = "ami-0022f774911c1d690"
  availability_zone           = var.az1
  instance_type               = "t2.micro"
  associate_public_ip_address = false
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.private-subnet-az1.id
  key_name                    = var.keyname
}