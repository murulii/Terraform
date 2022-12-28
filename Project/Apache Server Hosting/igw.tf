resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.Myvpc.id

  tags = {
    Name = "IGW"
  }
}

