resource "aws_security_group" "cw_sg_ssh" {
  name = "cw-blog-3-sg-using-terraform"
  vpc_id = aws_vpc.Myvpc.id

  tags = {
  Name = "SecurityforWebserver"
  }
  #Incoming traffic
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your ip address
  }

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your ip address
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your ip address
  }
  ingress {
    from_port = 50000
    to_port = 50000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #replace it with your ip address
  }

  #Outgoing traffic
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output "vpc_d" {
  value       = aws_security_group.cw_sg_ssh.id
  description = "VPC id."
  sensitive = false
}
