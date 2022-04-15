resource "aws_route53_record" "www" {
  zone_id = "Z07722861Y5A7UP5TAGNZ"
  name    = "${var.COMPONENT["name"]}-dev"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}
