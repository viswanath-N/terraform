resource "aws_security_group" "tf-sg" {
  name        = "ssh-sg"
  description = "ssh-security-group"
  vpc_id      = aws_vpc.this.id

ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
from_port = 22
    to_port = 22
    protocol = "tcp"
  }

 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "upgrad-sg"
  }
}
