resource "aws_vpc"  "Myvpc" {
cidr_block = "10.0.0.0/16"

tags = {
Name= "Myvpc"
}
}

output "vpc_id" {
  value       =aws_vpc.Myvpc.id
  description = "VPC id."
  sensitive = false
}
