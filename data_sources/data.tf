data "aws_instances" "example" {
  instance_tags = {
    Name = "TERRAFORM-MAIN-INSTANCE-PYTHON"
  }

  filter {
    name   = "tag:Name"
    values = ["TERRAFORM-MAIN-INSTANCE-PYTHON"]
  }

}
output "primary_instance_ip" {
  value = data.aws_instance.example.private_ip
}