resource "aws_security_group" "allow_app" {
  name        = "allow_${var.COMPONENT["name"]}"
  description = "Allow inbound for ${var.COMPONENT["name"]} Component"

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "APPPORT"
    from_port   = var.COMPONENT["port"]
    to_port     = var.COMPONENT["port"]
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_${var.COMPONENT["name"]}"
  }
}
