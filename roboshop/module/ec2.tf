resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = "ami-0fe118ae150a71466"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]
  wait_for_fulfillment   = true

  tags = {
    Name = var.COMPONENT["name"]
  }

}

resource "aws_ec2_tag" "ec2-name-tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "Name"
  value       = var.COMPONENT["name"]
}

resource "aws_ec2_tag" "ec2-monitor-tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "Monitor"
  value       = var.COMPONENT["monitor"]
}

resource "null_resource" "ansible-apply" {
  depends_on = [aws_route53_record.www]
  //  triggers = {
  //    abc = timestamp()
  //  }
  provisioner "remote-exec" {
    connection {
      host     = aws_spot_instance_request.cheap_worker.private_ip
      user     = "root"
      password = "DevOps321"
    }
    inline = [
      "ansible-pull -U https://github.com/raghudevopsb62/ansible roboshop-pull.yml -e COMPONENT=${var.COMPONENT["name"]} -e ENV=dev"
    ]
  }
}
