
###creating Route Table

resource "aws_route_table" "route" {
  vpc_id = aws_vpc.Myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "route"
  }
}


###subnet association of public01
resource "aws_route_table_association" "a" {
  subnet_id = aws_subnet.Publicsubnet.id
  route_table_id = aws_route_table.route.id
}
###subnet association of public02
resource "aws_route_table_association" "b" {
  subnet_id = aws_subnet.Publicsubnet2.id
  route_table_id = aws_route_table.route.id
}

