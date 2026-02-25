output "ec2-output" {
  value = aws_instance.example
}

output "route53-output" {
  value = aws_route53_record.www
}