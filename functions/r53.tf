resource "aws_route53_record" "www" {
  count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}" 
  type    = "A"
  ttl     = 1
  records = [var.instances[count.index].private_ip] # It means it depends on creation of ec2-intstances for private IP
}

resource "aws_route53_record" "frontend"{
  zone_id = var.zone_id
  name="roboshop.${var.domain_name}"
  type="A"
  ttl=1
  records=[lookup(aws_instance.example, "frontend").public_ip]
}
