
##For Create Target Grp

resource "aws_lb_target_group" "test" {
  name     = "tf-example-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Myvpc.id
}

## attach multiple Targeted instances 
resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.blog3-ec22.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "test1" {
  target_group_arn = aws_lb_target_group.test.arn
  target_id        = aws_instance.blog3-ec222.id
  port             = 80
}


