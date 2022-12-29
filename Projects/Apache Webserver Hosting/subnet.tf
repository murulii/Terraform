##Create Public Subnet-01
resource "aws_subnet" "Publicsubnet" {
          vpc_id = aws_vpc.Myvpc.id
          cidr_block = "10.0.1.0/24"
          availability_zone = "us-east-2a"
          map_public_ip_on_launch = "true"
tags = {
Name = "Publicsubnet "}
}

output "public_subnet_id" {
  value       =aws_subnet.Publicsubnet.id
  description = "Publicsubnet"
  sensitive = false
}


##Create Public Subnet-02
resource "aws_subnet" "Publicsubnet2" {
          vpc_id = aws_vpc.Myvpc.id
          cidr_block = "10.0.3.0/24"
          availability_zone = "us-east-2b"
          map_public_ip_on_launch = "true"
tags = {
Name = "Publicsubnet2 "}
}
output "public_subnet_id2" {
  value       =aws_subnet.Publicsubnet2.id
  description = "Publicsubnet"
  sensitive = false
}

##Create Private Subnet-02
resource "aws_subnet" "Privatesubnet" {
          vpc_id = aws_vpc.Myvpc.id
          cidr_block = "10.0.2.0/24"
          availability_zone = "us-east-2c"
tags = {
Name = "Privatesubnet "}
}

output "private_subnet_id" {
  value       =aws_subnet.Privatesubnet.id
  description = "Privatesubnet"
  sensitive = false
}
