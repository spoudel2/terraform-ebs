resource "aws_security_group" "default" {
  name        = "terraform-ebs"
  description = "Allow traffic"
  vpc_id      = "vpc-e73c129d"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = ["0.0.0.0/0"]
  }
}
