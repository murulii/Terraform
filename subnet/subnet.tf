resource "aws_subnet" "Publicsubnet" {
          vpc_id = aws_vpc.Myvpc.id
          cidr_block = "10.0.1.0/24"
          map_public_ip_on_launch = "true"
tags = {
Name = "Publicsubnet "}
}

resource "aws_subnet" "Privatesubnet" {
          vpc_id = aws_vpc.Myvpc.id
           cidr_block = "10.0.2.0/24"

tags = {
Name = "Privatesubnet "}
}

output "public_subnet_id" {
  value       =aws_subnet.Publicsubnet.id
  description = "Publicsubnet"
  sensitive = false
}
output "private_subnet_id" {
  value       =aws_subnet.Privatesubnet.id
  description = "Privatesubnet"
  sensitive = false
}
