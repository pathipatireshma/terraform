resource "aws_instance" "web" {
  ami                    = "ami-03197d3284e25e8db"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.SG_ID]

  tags = {
    Name = "web"
  }
}

variable "SG_ID" {}