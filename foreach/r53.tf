resource "aws_route53_record" "www" {
  for_each = aws_instance.example
  zone_id = var.zone_id
  name = "${each.key}.${var.domain_name}"
  type = "A"
  allow_overwrite = true
  ttl = 1
  records = [each.value.private_ip]
  
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name ="roboshop.${var.domain_name}"
    type = "A"
    allow_overwrite = true
    ttl = 1
    records = [lookup(aws_instance.example, "frontend").public_ip]
}