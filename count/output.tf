output "roboshop_instances" {
  value       = aws_instance.example
  description = "description"
}

output "fruits_names" {
    value = var.fruits
    sensitive = true
}

output "fruits_set" {
    value = var.fruits_set
}