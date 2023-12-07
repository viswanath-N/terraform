resource "awss_key_pair" "key" {
  key_name = "ssh-key"
  public_key = "<paste public key here  id_rsa.pub>"
}
resource "aws_instance" "this" {
 ami              = "<>"
 instance_type    = "t2.small"
 associate_public_ip_address = true
 key_name = aws_key_pair.key.key_name
 security_groups = [aws_security_group.tf-sg.id]
 subnet_id = aws_subnet.public1.id
}

output "EC2_IP" {
  value = aws_instance.this.public_ip
}

  
