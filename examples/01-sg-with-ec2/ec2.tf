resource "aws_instance" "web" {
  ami                    = "ami-03197d3284e25e8db"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "web"
  }
}