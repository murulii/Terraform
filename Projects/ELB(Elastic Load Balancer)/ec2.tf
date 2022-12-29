
##Create multiple ec2 instances
resource "aws_instance" "blog3-ec22" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name= "muruli"
user_data = file("web.sh")
  subnet_id = aws_subnet.Publicsubnet.id
  security_groups = [aws_security_group.cw_sg_ssh.id]
tags = {
Name = "Webserver-ubuntu "}
}
output "instance01" {
  value       =aws_instance.blog3-ec22.id
  description = "instnce"
  sensitive = false
}

resource "aws_instance" "blog3-ec222" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name= "muruli"
user_data = file("web.sh")
  subnet_id = aws_subnet.Publicsubnet2.id
  security_groups = [aws_security_group.cw_sg_ssh.id]
tags = {
Name = "Webserver-ubuntu "}
}
output "instance012" {
  value       =aws_instance.blog3-ec222.id
  description = "instnce"
  sensitive = false
}


