
##Create ELB (application) with multi az
resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.cw_sg_ssh.id]
  subnets = [aws_subnet.Publicsubnet.id,aws_subnet.Publicsubnet2.id]

  tags = {
    Environment = "production"
  }
}

###Create Listener ,Forward Trafiic to target grp 
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.test.arn
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.test.arn
  }
}