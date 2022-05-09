resource "aws_ec2_transit_gateway" "twg-infrastructure" {
  description = "demo-twg-infrastucture"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "twg-infrastructure-attachment" {
  subnet_ids         = [aws_subnet.tgw-az1.id, aws_subnet.tgw-az2.id]
  transit_gateway_id = aws_ec2_transit_gateway.twg-infrastructure.id
  vpc_id             = aws_vpc.fgtvm-vpc.id
}