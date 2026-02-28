data "aws_instance" "example" {
  instance_tags = {
    Name = "TERRAFORM-MAIN-INSTANCE-PYTHON"
  }

  filter {
    name   = "tag:Name"
    values = ["TERRAFORM-MAIN-INSTANCE-PYTHON"]
  }

}
output "ami_id" {
  value = data.aws_instance.ami
}