resource "aws_instance" "instance01" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name= "muruli"
  user_data = file("web.sh")
  subnet_id = aws_subnet.Publicsubnet.id
  security_groups = [aws_security_group.cw_sg_ssh.id]
tags = {
Name = "Config server"}
}
output "instance01" {
  value       =aws_instance.instance01.id
  description = "instnce"
  sensitive = false
}


resource "aws_instance" "instance02" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name= "muruli"
  user_data = file("web.sh")
  subnet_id = aws_subnet.Publicsubnet.id
  security_groups = [aws_security_group.cw_sg_ssh.id]
tags = {
Name = "Shade DB1"}
}
output "instance02" {
  value       =aws_instance.instance02.id
  description = "instnce"
  sensitive = false
}

resource "aws_instance" "instance03" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name= "muruli"
  user_data = file("web.sh")
  subnet_id = aws_subnet.Publicsubnet.id
  security_groups = [aws_security_group.cw_sg_ssh.id]
tags = {
Name = "Shade DB2"}
}
output "instance03" {
  value       =aws_instance.instance03.id
  description = "instnce"
  sensitive = false
}


resource "aws_instance" "instance04" {
  ami = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name= "muruli"
  user_data = file("web.sh")
  subnet_id = aws_subnet.Publicsubnet.id
  security_groups = [aws_security_group.cw_sg_ssh.id]
tags = {
Name = "Mong Client"}
}
output "instance04" {
  value       =aws_instance.instance04.id
  description = "instnce"
  sensitive = false
}






